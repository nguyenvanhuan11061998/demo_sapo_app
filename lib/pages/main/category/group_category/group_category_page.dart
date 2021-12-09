import 'package:demo_sapo_app/data/blocs/home/group_category/group_category_bloc.dart';
import 'package:demo_sapo_app/domain/model/home_config/top_category_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'category_paging_widget.dart';

class GroupCategoryPage extends StatefulWidget {
  static const String path = 'GroupCategoryPage';
  TopCategoryModel model;

  GroupCategoryPage({required this.model, Key? key}) : super(key: key);

  @override
  _GroupCategoryPageState createState() => _GroupCategoryPageState();
}

class _GroupCategoryPageState extends State<GroupCategoryPage>
    with TickerProviderStateMixin {
  late GroupCategoryBloc _bloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bloc = GroupCategoryBloc(widget.model, this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_bloc.model.name ?? ''),
        centerTitle: false,
        backgroundColor: Color(0xffd10000),
      ),
      body: Column(
        children: [
          Container(
            height: 44,
            color: Color(0xffd10000),
            child: TabBar(
                controller: _bloc.tabController,
                indicatorColor: Colors.blue,
                unselectedLabelColor: Color(0xffbdbdbd),
                labelColor: Colors.white,
                isScrollable: true,
                tabs: [
                  ...List.generate(
                      _bloc.model.categories!.length,
                      (index) => Tab(
                            text: _bloc.model.categories![index].name,
                          ))
                ]),
          ),
          Expanded(
              child: TabBarView(
            controller: _bloc.tabController,
            children: [
              ...List.generate(
                  _bloc.model.categories!.length,
                  (index) => CategoryPagingWidget(
                      categoryId: _bloc.model.categories![index].id!))
            ],
          ))
        ],
      ),
    );
  }
}
