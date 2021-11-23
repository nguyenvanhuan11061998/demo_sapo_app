import 'package:demo_sapo_app/data/blocs/news/blog_repository.dart';
import 'package:demo_sapo_app/domain/model/blogs/blog_model.dart';
import 'package:demo_sapo_app/widgets/blogs_tab_view_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/src/provider.dart';

class NewsPage extends StatefulWidget {
  @override
  NewsPageState createState() {
    return NewsPageState();
  }

}

class NewsPageState extends State<NewsPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Tin tức'),
          backgroundColor: Color(0xffd10000),
          centerTitle: false
      ),
      body: FutureBuilder<List<BlogModel>>(
        future: GetIt.instance.get<BlogRepository>().getBlogs(),
        builder: (context, snap) {
          if (snap.hasData) {
            _tabController =
                TabController(length: snap.data!.length + 1, vsync: this);
            final List<String> tabs = [];
            final Map<String, int> tabMap = {'Tất cả': 0};
            tabs.add('Tất cả');
            snap.data!.forEach((element) {
              tabs.add(element.name ?? "");
              tabMap.addAll({element.name ?? "": element.id ?? 0});
            });
            return Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    controller: _tabController,
                      //indicatorColor: màu đường line bên dưới title tabBar selected
                      indicatorColor: Color(0xffd10000),
                      //labelColor: màu title selected tabBar
                      labelColor: Color(0xffd10000),
                      //unselectedLabelColor: màu tab unselected
                      unselectedLabelColor: Colors.black,
                      labelStyle: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.bold),
                      //indicatorPadding: padding giữa hai tab
                      indicatorPadding: EdgeInsets.only(left: 12, right: 12),
                      //isScrollable: cho phép scroll các tab trên tab bar
                      isScrollable: true,
                      tabs: [
                        for (final tab in tabs)
                          Tab(text: tab)
                      ]),
                ),

                Expanded(child: TabBarView(
                  controller: _tabController,
                  children: [
                    for (final tab in tabs)
                      BlogsTabViewWidget(
                        id: tabMap[tab]!,
                      )
                  ],
                ))
              ],
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}