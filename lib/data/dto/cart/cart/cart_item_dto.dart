


import 'package:demo_sapo_app/data/dto/product/product_dto.dart';
import 'package:demo_sapo_app/domain/model/cart/cart_item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item_dto.g.dart';

/**
 * CartItemDto: triển khai của CartItemModel
 */

@JsonSerializable()
class CartItemDto extends CartItemModel {
  @override
  int count;

  @override
  int id;

  @override
  String get image {
    if (product.images!.isNotEmpty) {
      return product.images!.first.full_path ??'';
    } else return '';
  }

  @override
  ProductDto product;

  @override
  int? variantId;

  setCount(int count) {
    this.count = count;
  }

  CartItemDto(this.count, this.id, this.product, this.variantId);

  factory CartItemDto.fromJson(Map<String, dynamic> json) =>
      _$CartItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CartItemDtoToJson(this);
}