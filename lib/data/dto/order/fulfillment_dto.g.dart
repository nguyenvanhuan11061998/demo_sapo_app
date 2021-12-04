// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fulfillment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FulfillmentDto _$FulfillmentDtoFromJson(Map<String, dynamic> json) {
  return FulfillmentDto(
    json['id'] as int,
    json['packed_on'] as String?,
    json['shipped_on'] as String?,
  );
}

Map<String, dynamic> _$FulfillmentDtoToJson(FulfillmentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'packed_on': instance.packed_on,
      'shipped_on': instance.shipped_on,
    };
