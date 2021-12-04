import 'package:demo_sapo_app/data/dto/cart/address_dto.dart';
import 'package:demo_sapo_app/data/dto/order/delivery_fee_dto.dart';
import 'package:demo_sapo_app/data/dto/order/fulfillment_dto.dart';
import 'package:demo_sapo_app/data/dto/order/order_line_item_dto.dart';
import 'package:demo_sapo_app/data/dto/order/prepayment_dto.dart';
import 'package:demo_sapo_app/domain/model/order/order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_dto.g.dart';

@JsonSerializable()
class OrderDto extends OrderModel {
  @override
  final AddressDto? billing_address;

  @override
  final String? cancelled_on;

  @override
  final String code;

  @override
  final String? completed_on;

  @override
  final String created_on;

  @override
  final DeliveryFeeDto? delivery_fee;

  @override
  final String? expected_delivery_type;

  @override
  final int? expected_payment_method_id;

  @override
  final String? finalized_on;

  @override
  final FulfillmentDto? fulfillmentMax;

  @override
  final List<FulfillmentDto>? fulfillments;

  @override
  final int id;

  @override
  final int? location_id;

  @override
  final String modified_on;

  @override
  final String? note;

  @override
  final List<OrderLineItemDto>? order_line_items;

  @override
  final String phone_number;

  @override
  final List<PrepaymentDto>? prepayments;

  @override
  final String? ship_on;

  @override
  final AddressDto? shipping_address;

  @override
  final String? status;

  @override
  final int tenant_id;

  @override
  final int total;

  @override
  final int total_discount;

  @override
  int get actualPayment {
    int totalPrepayments = 0;
    for (var element in prepayments!) {
      totalPrepayments += element.paid_amount.toInt();
    }
    return total - totalPrepayments;
  }

  OrderDto(
      this.billing_address,
      this.cancelled_on,
      this.code,
      this.completed_on,
      this.created_on,
      this.delivery_fee,
      this.expected_delivery_type,
      this.expected_payment_method_id,
      this.finalized_on,
      this.fulfillmentMax,
      this.fulfillments,
      this.id,
      this.location_id,
      this.modified_on,
      this.note,
      this.order_line_items,
      this.phone_number,
      this.prepayments,
      this.ship_on,
      this.shipping_address,
      this.status,
      this.tenant_id,
      this.total,
      this.total_discount);

  factory OrderDto.fromJson(Map<String, dynamic> json) {
    return _$OrderDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$OrderDtoToJson(this);
  }
}
