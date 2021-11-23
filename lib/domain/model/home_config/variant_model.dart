


import 'package:demo_sapo_app/data/dto/product/variant_price_dto.dart';

import 'image_model.dart';
import 'inventories_model.dart';

abstract class VariantModel {
  int? id;
  String? barcode;
  String? description;
  List<ImageModel>? get images;
  List<InventoriesModel>? get inventories;
  String?  name;
  String? opt1;
  int? product_id;
  String? product_name;
  bool? ellable;
  String? sku;
  String? unit;
  String? weight_unit;
  int? weight_value;

  List<VariantPriceDto>? get variant_prices;

  String? thumbnail;

  String? discount;


  int get salePrice;

  int get comparePrice;
}