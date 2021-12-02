// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoucherDto _$VoucherDtoFromJson(Map<String, dynamic> json) {
  return VoucherDto(
    json['code'] as String?,
    json['description'] as String?,
    (json['discount_percent'] as num?)?.toDouble(),
    json['end_date'] as String?,
    json['id'] as int?,
    json['name'] as String?,
    (json['order_total_required'] as num?)?.toDouble(),
    (json['discount_amount'] as num?)?.toDouble(),
    json['status'] as String?,
    json['start_date'] as String?,
  );
}

Map<String, dynamic> _$VoucherDtoToJson(VoucherDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'discount_percent': instance.discountPercent,
      'discount_amount': instance.discountAmount,
      'end_date': instance.endDate,
      'id': instance.id,
      'name': instance.name,
      'order_total_required': instance.orderTotalRequired,
      'status': instance.status,
      'start_date': instance.start_date,
    };
