// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warranty_card_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WarrantyCardModelDto _$WarrantyCardModelDtoFromJson(Map<String, dynamic> json) {
  return WarrantyCardModelDto(
    json['code'] as String,
    json['id'] as int,
    ItemModelDto.fromJson(json['item'] as Map<String, dynamic>),
    json['note'] as String?,
    json['order_id'] as int,
    json['status'] as String,
    json['tenant_id'] as int,
  );
}

Map<String, dynamic> _$WarrantyCardModelDtoToJson(
        WarrantyCardModelDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      'id': instance.id,
      'item': instance.item,
      'note': instance.note,
      'order_id': instance.order_id,
      'status': instance.status,
      'tenant_id': instance.tenant_id,
    };
