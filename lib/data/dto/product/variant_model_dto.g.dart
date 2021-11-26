// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariantModelDto _$VariantModelDtoFromJson(Map<String, dynamic> json) {
  return VariantModelDto(
    json['barcode'] as String?,
    json['description'] as String?,
    json['ellable'] as bool?,
    json['id'] as int?,
    json['name'] as String?,
    json['opt1'] as String?,
    json['product_id'] as int?,
    json['product_name'] as String?,
    json['sku'] as String?,
    json['unit'] as String?,
    json['weight_unit'] as String?,
    json['weight_value'] as int?,
    json['discount'] as String?,
    json['thumbnail'] as String?,
    (json['images'] as List<dynamic>?)
        ?.map((e) => ImageModelDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['inventories'] as List<dynamic>?)
        ?.map((e) => InventoriesModelDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['variant_prices'] as List<dynamic>?)
        ?.map((e) => VariantPriceDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$VariantModelDtoToJson(VariantModelDto instance) =>
    <String, dynamic>{
      'barcode': instance.barcode,
      'description': instance.description,
      'ellable': instance.ellable,
      'id': instance.id,
      'name': instance.name,
      'opt1': instance.opt1,
      'product_id': instance.product_id,
      'product_name': instance.product_name,
      'sku': instance.sku,
      'unit': instance.unit,
      'weight_unit': instance.weight_unit,
      'weight_value': instance.weight_value,
      'discount': instance.discount,
      'thumbnail': instance.thumbnail,
      'images': instance.images,
      'inventories': instance.inventories,
      'variant_prices': instance.variant_prices,
    };
