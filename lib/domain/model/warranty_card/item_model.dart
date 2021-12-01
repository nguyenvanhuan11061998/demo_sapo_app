


import 'package:demo_sapo_app/domain/model/warranty_card/wrranty_term_model.dart';

abstract class ItemModel {
  int get id;
  int get product_id;
  String get title;
  String get sku;
  int get variant_id;
  double get quantity;
  WarrantyTermModel get warranty_term;
}