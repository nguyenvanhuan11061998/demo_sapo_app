import 'package:demo_sapo_app/data/blocs/news/blog_repository.dart';
import 'package:demo_sapo_app/domain/model/blogs/article_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

import 'article_item_widget.dart';

class BlogsTabViewWidget extends StatefulWidget {

  int id;

  BlogsTabViewWidget({required this.id, Key? key}) : super(key: key);


  @override
  BlogsTabViewWidgetState createState() {
    return BlogsTabViewWidgetState();
  }
}

class BlogsTabViewWidgetState extends State<BlogsTabViewWidget> {
  late Future<List<ArticleModel>> articleFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    articleFuture = GetIt.instance.get<BlogRepository>().getArticle(widget.id);
    // articleFuture = context.read<BlogRepository>().getArticle(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: articleFuture,
      builder: (context, snap) {
        if (snap.hasData && snap.requireData.isNotEmpty) {
          return SizedBox(
            child: Container(
              padding: EdgeInsets.all(10),
              color: Color(0xffdbdbdb),
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1

                  ), itemBuilder: (context, index) {
                    return ArticleItemWidget(
                      key: ValueKey(snap.data!.elementAt(index).id),
                      model: snap.data!.elementAt(index)
                    );
              },
              itemCount: snap.data!.length),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}