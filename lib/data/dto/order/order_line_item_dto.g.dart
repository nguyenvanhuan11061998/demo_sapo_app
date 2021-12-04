// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_line_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderLineItemDto _$OrderLineItemDtoFromJson(Map<String, dynamic> json) {
  return OrderLineItemDto(
    json['id'] as int,
    json['price'] as int,
    json['product_id'] as int,
    json['product_name'] as String,
    (json['quantity'] as num).toDouble(),
    json['variant_id'] as int,
    json['variant_name'] as String,
  );
}

Map<String, dynamic> _$OrderLineItemDtoToJson(OrderLineItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'product_id': instance.product_id,
      'product_name': instance.product_name,
      'quantity': instance.quantity,
      'variant_id': instance.variant_id,
      'variant_name': instance.variant_name,
    };
