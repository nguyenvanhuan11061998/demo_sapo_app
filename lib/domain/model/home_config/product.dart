import 'package:demo_sapo_app/domain/model/home_config/variant_model.dart';

import 'image_model.dart';
import 'option_model.dart';

abstract class ProductModel {
  int? id;
  String? brand;
  int? category_id;
  String? description;
  List<ImageModel>? get images;
  String? name;
  List<OptionsModel>? get options;
  List<VariantModel>? get variants;
  String? discount;
}
