// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventories_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoriesModelDto _$InventoriesModelDtoFromJson(Map<String, dynamic> json) =>
    InventoriesModelDto(
      json['available'] as int?,
      json['location_id'] as int?,
      json['variant_id'] as int?,
    );

Map<String, dynamic> _$InventoriesModelDtoToJson(
        InventoriesModelDto instance) =>
    <String, dynamic>{
      'available': instance.available,
      'location_id': instance.location_id,
      'variant_id': instance.variant_id,
    };
