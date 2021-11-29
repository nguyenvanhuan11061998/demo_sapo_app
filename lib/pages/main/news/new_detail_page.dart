import 'package:demo_sapo_app/data/blocs/news/new_detail_bloc.dart';
import 'package:demo_sapo_app/domain/model/blogs/article_model.dart';
import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewDetailPage extends StatefulWidget {
  static const path = 'NewDetailPage';
  ArticleModel articleModel;

  NewDetailPage({required this.articleModel, Key? key}) : super(key: key);

  @override
  _NewDetailPageState createState() => _NewDetailPageState();
}

class _NewDetailPageState extends State<NewDetailPage> {
  NewDetailBloc newDetailBloc = NewDetailBloc();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    newDetailBloc.formatTime(widget.articleModel.modified_on ?? '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          // headerSliverBuilder: đối tượng tạo ra các widget phía trước scroll view, không bị scroll
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              // SliverOverlapAbsorber: widget cho phép các con chồng chéo lên nhau
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                // SliverSafeArea: widget cho phép tạo ra một hệ thống cho phép các view tránh nhau
                sliver: SliverSafeArea(
                  // SliverAppBar: tạo một app bar có thể được set vị trí bất kỳ trong một scrollView
                  top: false,
                  sliver: SliverAppBar(
                    backgroundColor: Color(0xffd10000),
                    // forceElevated: Có hiển thị bóng phù hợp với độ cao hay không
                    forceElevated: innerBoxIsScrolled,
                    centerTitle: false,
                    title: Text(widget.articleModel.title ?? '',
                        overflow: TextOverflow.ellipsis),
                    //titleSpacing: set giá trị horizontal của title
                    titleSpacing: 0,
                    // độ cao cho phép của app bar
                    expandedHeight: 211,
                    // set app bar có được hiển thị ở đầu scroll view hay không
                    // true : khi scroll hết vẫn hiển thị appbar, false: khi scroll lên, appbar bị kéo lên, ẩn đi
                    pinned: true,
                    leading: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 32,
                        color: Colors.white,
                      ),
                    ),
                    // tạo ra một không gian linh hoạt có thể mở rộng và co lại khi ứng dụng cuộn
                    flexibleSpace: FlexibleSpaceBar(
                      background: Container(
                        width: double.infinity,
                        height: 211,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                // ảnh sẽ tự động co lại và biến mất khi ứng dụng cuộn
                                image: NetworkImage(
                                    widget.articleModel.image?.src ?? ''),
                                fit: BoxFit.fill)),
                      ),
                    ),
                  ),
                ),
              )
            ];
          },
          body: Container(
            child: Column(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.articleModel.title ?? '',
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Text(newDetailBloc.time,
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                        SizedBox(height: 20),
                        Html(
                          data: widget.articleModel.content,
                        )
                      ],
                    ),
                  ),
                )),
                Container(
                  height: 80,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    // các phần tử con bên trong sẽ chiếm các không gian bằng nhau
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      StreamBuilder(
                          stream: newDetailBloc.likeStreamController.stream,
                          builder: (context, snapshot) {
                            if (snapshot != null) {
                              return InkWell(
                                onTap: () {
                                  newDetailBloc.changeLike();
                                },
                                child: Row(
                                  children: [
                                    SvgPicture.asset(Assets.icons.icLike,
                                        color: snapshot.data == true
                                            ? Color(0xffd10000)
                                            : Color(0xff939393)),
                                    SizedBox(width: 10),
                                    Text('Thích',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                fontSize: 16,
                                                color: snapshot.data == true
                                                    ? Color(0xffd10000)
                                                    : Color(0xff939393)))
                                  ],
                                ),
                              );
                            } else {
                              return Container();
                            }
                          }),
                      Row(
                        children: [
                          SvgPicture.asset(Assets.icons.icComment,
                              color: Color(0xff939393)),
                          SizedBox(width: 10),
                          Text('Bình luận',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      fontSize: 16, color: Color(0xff939393)))
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(Assets.icons.icShare,
                              color: Color(0xff939393)),
                          SizedBox(width: 10),
                          Text('Chia sẻ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      fontSize: 16, color: Color(0xff939393)))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
