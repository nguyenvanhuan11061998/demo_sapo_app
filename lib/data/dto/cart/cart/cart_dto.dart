

import 'package:demo_sapo_app/domain/model/address_model.dart';
import 'package:demo_sapo_app/domain/model/cart/cart_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:demo_sapo_app/data/dto/cart/address_dto.dart';
import 'cart_item_dto.dart';

part 'cart_dto.g.dart';

/**
 * CartDto : đối tượng thực thi cartModel
 */

@JsonSerializable()
class CartDto extends CartModel {

  @override
  AddressDto? addressModel;

  @override
  List<CartItemDto> cart;

  @override
  int uid;

  CartDto(this.cart, this.uid, this.addressModel);

  CartDto copyWithCartItem(List<CartItemDto> cart) {
    return CartDto(cart, uid, addressModel);
  }

  factory CartDto.fromJson(Map<String, dynamic> json) {
    return _$CartDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CartDtoToJson(this);

  @override
  // TODO: implement totalPrice
  int get totalPrice {
    int totalPrice = 0;
    cart.forEach((cartItem) {
      totalPrice += cartItem.getSumPrice;
    });
    return totalPrice;
  }
}