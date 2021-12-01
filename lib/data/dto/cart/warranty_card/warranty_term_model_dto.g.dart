// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warranty_term_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WarrantyTermModelDto _$WarrantyTermModelDtoFromJson(Map<String, dynamic> json) {
  return WarrantyTermModelDto(
    json['end_date'] as String,
    json['id'] as int,
    json['start_date'] as String,
    json['term_name'] as String,
    json['term_number'] as int,
    json['term_type'] as String,
    json['warranty_period_days'] as int,
  );
}

Map<String, dynamic> _$WarrantyTermModelDtoToJson(
        WarrantyTermModelDto instance) =>
    <String, dynamic>{
      'end_date': instance.end_date,
      'id': instance.id,
      'start_date': instance.start_date,
      'term_name': instance.term_name,
      'term_number': instance.term_number,
      'term_type': instance.term_type,
      'warranty_period_days': instance.warranty_period_days,
    };
