import 'package:demo_sapo_app/domain/model/home_config/top_category_model.dart';
import 'package:flutter/material.dart';

class GroupCategoryBloc {
  TopCategoryModel model;
  late TabController tabController;

  GroupCategoryBloc(this.model, TickerProvider vsync) {
    tabController = TabController(length: model.categories!.length, vsync: vsync);
  }
}
