

import 'package:demo_sapo_app/domain/model/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonSerializable()
class CategoryModelDto implements CategoryModel {

  @override
  @JsonKey(defaultValue: '')
  String? icon;

  @override
  int? id;

  @override
  String? name;

  @override
  int? tenant_id = 0;


  CategoryModelDto(this.icon, this.id, this.name, this.tenant_id,
      this.categories);

  CategoryModelDto.fromJson(Map<String, dynamic> json) {
    icon = json['icon'] as String?;
    id = json['id'] as int?;
    name = json['name'] as String?;
    tenant_id = json['tenant_id'] as int?;

    categories = (json['categories'] as List<dynamic>?)?.map((e) => CategoryModelDto.fromJson(e)).toList();
  }

  Map<String, dynamic>? toJson(CategoryModelDto instance) {
    <String, dynamic> {
      'icon' : icon,
      'id' : id,
      'name' : name,
      'categories' : toJson(instance.categories as CategoryModelDto)
    };
  }

  @override
  @JsonKey(defaultValue: [])
  List<CategoryModel>? categories;

}