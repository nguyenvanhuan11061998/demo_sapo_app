


import 'package:demo_sapo_app/domain/model/home_config/product.dart';


/**
 * CartItemModel: đối tượng chứa dữ liệu về một sản phẩm như thông tin sản phẩm,
 * số lượng sản phẩm được chọn, ảnh sản phẩm.
 */
abstract class CartItemModel {
  int get id;
  int get count;
  int? get variantId;
  ProductModel get product;
  String get image;
}