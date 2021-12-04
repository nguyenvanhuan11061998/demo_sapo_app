// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDto _$OrderDtoFromJson(Map<String, dynamic> json) {
  return OrderDto(
    json['billing_address'] == null
        ? null
        : AddressDto.fromJson(json['billing_address'] as Map<String, dynamic>),
    json['cancelled_on'] as String?,
    json['code'] as String,
    json['completed_on'] as String?,
    json['created_on'] as String,
    json['delivery_fee'] == null
        ? null
        : DeliveryFeeDto.fromJson(json['delivery_fee'] as Map<String, dynamic>),
    json['expected_delivery_type'] as String?,
    json['expected_payment_method_id'] as int?,
    json['finalized_on'] as String?,
    json['fulfillmentMax'] == null
        ? null
        : FulfillmentDto.fromJson(
            json['fulfillmentMax'] as Map<String, dynamic>),
    (json['fulfillments'] as List<dynamic>?)
        ?.map((e) => FulfillmentDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['id'] as int,
    json['location_id'] as int?,
    json['modified_on'] as String,
    json['note'] as String?,
    (json['order_line_items'] as List<dynamic>?)
        ?.map((e) => OrderLineItemDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['phone_number'] as String,
    (json['prepayments'] as List<dynamic>?)
        ?.map((e) => PrepaymentDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['ship_on'] as String?,
    json['shipping_address'] == null
        ? null
        : AddressDto.fromJson(json['shipping_address'] as Map<String, dynamic>),
    json['status'] as String?,
    json['tenant_id'] as int,
    json['total'] as int,
    json['total_discount'] as int,
  );
}

Map<String, dynamic> _$OrderDtoToJson(OrderDto instance) => <String, dynamic>{
      'billing_address': instance.billing_address,
      'cancelled_on': instance.cancelled_on,
      'code': instance.code,
      'completed_on': instance.completed_on,
      'created_on': instance.created_on,
      'delivery_fee': instance.delivery_fee,
      'expected_delivery_type': instance.expected_delivery_type,
      'expected_payment_method_id': instance.expected_payment_method_id,
      'finalized_on': instance.finalized_on,
      'fulfillmentMax': instance.fulfillmentMax,
      'fulfillments': instance.fulfillments,
      'id': instance.id,
      'location_id': instance.location_id,
      'modified_on': instance.modified_on,
      'note': instance.note,
      'order_line_items': instance.order_line_items,
      'phone_number': instance.phone_number,
      'prepayments': instance.prepayments,
      'ship_on': instance.ship_on,
      'shipping_address': instance.shipping_address,
      'status': instance.status,
      'tenant_id': instance.tenant_id,
      'total': instance.total,
      'total_discount': instance.total_discount,
    };
