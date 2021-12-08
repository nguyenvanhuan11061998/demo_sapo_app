import 'package:demo_sapo_app/data/blocs/search_bloc/search_bloc.dart';
import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:demo_sapo_app/pages/main/search/tag_widget.dart';
import 'package:demo_sapo_app/widgets/design_system/search_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:demo_sapo_app/data/blocs/search_bloc/search_state.dart';

import 'item_search_product_widget.dart';

class SearchPage extends StatefulWidget {
  static const String path = 'SearchPage';
  String? query;

  SearchPage({this.query, Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _textEditingController = TextEditingController();
  late SearchBloc _searchBloc;

  @override
  void initState() {
    super.initState();
    _searchBloc = SearchBloc(const SearchState.loading());
    if (widget.query != null && widget.query!.isNotEmpty) {
      _searchBloc.searchProduct(widget.query!);
    } else {
      _searchBloc.emit(const SearchState.normal());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe2e2e2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: AppBar().preferredSize.height +
                MediaQuery.of(context).padding.top,
            color: const Color(0xffd10000),
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).padding.top + 10, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SearchFormField(
                    textEditingController: _textEditingController,
                    hint: 'Tìm kiếm',
                    backgroundColor: Colors.white,
                    onEditingComplete: () {
                      _searchBloc.searchProduct(_textEditingController.text);
                    },
                    suffixIcon: InkResponse(
                      onTap: () {
                      },
                      child: SvgPicture.asset(Assets.icons.icScanBold),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text('Hủy',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 15, color: Colors.white)))
              ],
            ),
          ),
          Expanded(
            child: BlocProvider.value(
              value: _searchBloc,
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  return state.when((products) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Còn hàng',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(fontSize: 13)),
                                    const SizedBox(width: 10),
                                    SvgPicture.asset(Assets.icons.icArow),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 2),
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Sắp xếp',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(fontSize: 13)),
                                    const SizedBox(width: 10),
                                    SvgPicture.asset(Assets.icons.icFilter),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: GridView.builder(
                              scrollDirection: Axis.vertical,
                              padding: const EdgeInsets.all(16),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                      childAspectRatio: 6 / 8),
                              itemBuilder: (context, index) {
                                return ItemSearchProductWidget(productModel: products[index]);
                              },
                          itemCount: products.length),
                        )
                      ],
                    );
                  }, loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }, normal: () {
                    return FutureBuilder<List<String>>(
                      future: _searchBloc.getTags(),
                        builder: (context, snap) {
                      if(snap.hasData) {
                        return Container(
                          padding: EdgeInsets.only(top: 10),
                          //Wrap: layout bọc các layout khác, cho phép sắp xếp các con theo chiều dọc hoặc ngang như column và row,
                          // nếu các con chiếm hết vị trí cha sẽ đẩy con tiếp theo xuống dòng (row) hoặc sang ngang (column).
                          child: Wrap(
                            children: [
                              ...List.generate(snap.data!.length, (index) => TagWidget(title: snap.data![index], onClick: () {

                              })),
                            ],
                          ),
                        );
                      } else {
                        return Container();
                      }
                    });
                  }, error: (error) {
                    return Center(
                      child: Text(error,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 13)),
                    );
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
