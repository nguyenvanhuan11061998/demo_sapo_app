// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartItemDto _$CartItemDtoFromJson(Map<String, dynamic> json) {
  return CartItemDto(
    json['count'] as int,
    json['id'] as int,
    ProductDto.fromJson(json['product'] as Map<String, dynamic>),
    json['variantId'] as int?,
  );
}

Map<String, dynamic> _$CartItemDtoToJson(CartItemDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'id': instance.id,
      'product': instance.product,
      'variantId': instance.variantId,
    };
