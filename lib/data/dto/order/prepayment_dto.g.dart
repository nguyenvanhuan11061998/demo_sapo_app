// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prepayment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrepaymentDto _$PrepaymentDtoFromJson(Map<String, dynamic> json) {
  return PrepaymentDto(
    (json['amount'] as num).toDouble(),
    json['id'] as int,
    (json['paid_amount'] as num).toDouble(),
    json['paid_on'] as String?,
  );
}

Map<String, dynamic> _$PrepaymentDtoToJson(PrepaymentDto instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'id': instance.id,
      'paid_amount': instance.paid_amount,
      'paid_on': instance.paid_on,
    };
