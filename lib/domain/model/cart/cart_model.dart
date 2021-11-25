


import 'package:demo_sapo_app/domain/model/address_model.dart';
import 'package:demo_sapo_app/domain/model/cart/cart_item_model.dart';


/**
 * đối tượng chứa các dữ liệu về cart như địa chỉ, list cart
 */
abstract class CartModel {
  int get uid;

  List<CartItemModel> get cart;

  AddressModel? get addressModel;
}