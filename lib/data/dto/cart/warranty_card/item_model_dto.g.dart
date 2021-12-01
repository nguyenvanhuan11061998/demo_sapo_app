// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemModelDto _$ItemModelDtoFromJson(Map<String, dynamic> json) {
  return ItemModelDto(
    json['id'] as int,
    json['product_id'] as int,
    (json['quantity'] as num).toDouble(),
    json['sku'] as String,
    json['title'] as String,
    json['variant_id'] as int,
    WarrantyTermModelDto.fromJson(
        json['warranty_term'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ItemModelDtoToJson(ItemModelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.product_id,
      'quantity': instance.quantity,
      'sku': instance.sku,
      'title': instance.title,
      'variant_id': instance.variant_id,
      'warranty_term': instance.warranty_term,
    };
