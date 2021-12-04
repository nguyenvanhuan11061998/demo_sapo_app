// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_fee_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryFeeDto _$DeliveryFeeDtoFromJson(Map<String, dynamic> json) {
  return DeliveryFeeDto(
    (json['fee'] as num?)?.toDouble(),
    json['shipping_cost_name'] as String?,
  );
}

Map<String, dynamic> _$DeliveryFeeDtoToJson(DeliveryFeeDto instance) =>
    <String, dynamic>{
      'fee': instance.fee,
      'shipping_cost_name': instance.shipping_cost_name,
    };
