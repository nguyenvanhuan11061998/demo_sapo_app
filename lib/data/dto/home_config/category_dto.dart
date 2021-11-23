

import 'dart:core';

import 'package:demo_sapo_app/domain/model/home_config/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonSerializable()
class CategoriesDto implements CategoryModel{

  @override
  int? id;

  @override
  String? name;

  CategoriesDto(this.id, this.name);

  CategoriesDto.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    name = json['name'] as String?;
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic> {
      'id' : id,
      'name' : name
    };
  }
}