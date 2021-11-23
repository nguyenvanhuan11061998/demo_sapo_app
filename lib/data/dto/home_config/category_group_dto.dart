

import 'package:demo_sapo_app/domain/model/home_config/category_group_model.dart';

class CategoriesGroupDto implements CategoriesGroup{

  @override
  List<int>? categoryIds;

  @override
  String? title;

  CategoriesGroupDto(this.categoryIds, this.title);

  CategoriesGroupDto.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    categoryIds = (json['categoryIds'] as List<dynamic>).map((e) => e as int).toList();
  }
}