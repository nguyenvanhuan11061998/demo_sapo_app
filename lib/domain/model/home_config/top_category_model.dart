

import 'package:demo_sapo_app/data/dto/home_config/category_dto.dart';
import 'package:demo_sapo_app/data/dto/home_config/top_category_dto.dart';
import 'package:demo_sapo_app/domain/model/home_config/category_model.dart';

abstract class TopCategoryModel {
  int? id;
  String? name;
  String? icon;
  List<CategoriesDto>? categories;
}