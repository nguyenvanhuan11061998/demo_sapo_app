import 'dart:convert';

import 'package:demo_sapo_app/data/dto/home_config/category_dto.dart';
import 'package:demo_sapo_app/domain/model/home_config/top_category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonSerializable()
class TopCategoryDto implements TopCategoryModel {
  @override
  String? icon;

  @override
  int? id;

  @override
  String? name;

  @override
  List<CategoriesDto>? categories;

  TopCategoryDto(this.icon, this.id, this.name, this.categories);

  // cast json to object
  TopCategoryDto.fromJson(Map<String, dynamic> json) {
    icon = json['icon'] as String?;
    id = json['id'] as int?;
    name = json['name'] as String?;

    //cast list from json to list object
    categories = (json['categories'] as List<dynamic>?)
        ?.map((e) => CategoriesDto.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
