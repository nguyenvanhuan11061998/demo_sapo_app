// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) {
  return ProductDto(
    json['brand'] as String?,
    json['category_id'] as int?,
    json['description'] as String?,
    json['discount'] as String?,
    json['id'] as int?,
    (json['images'] as List<dynamic>?)
        ?.map((e) => ImageModelDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['name'] as String?,
    (json['options'] as List<dynamic>?)
        ?.map((e) => OptionsModelDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['variants'] as List<dynamic>?)
        ?.map((e) => VariantModelDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ProductDtoToJson(ProductDto instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'category_id': instance.category_id,
      'description': instance.description,
      'discount': instance.discount,
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'options': instance.options,
      'variants': instance.variants,
    };
