


import 'package:demo_sapo_app/domain/model/category_model.dart';

abstract class CategoryRepository {
  Future<List<CategoryModel>> getCategories();
}