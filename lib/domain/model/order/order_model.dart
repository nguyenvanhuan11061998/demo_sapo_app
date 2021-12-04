


import 'package:demo_sapo_app/domain/model/order/prepayment_model.dart';

import '../address_model.dart';
import 'delivery_fee_model.dart';
import 'fulfillment_model.dart';
import 'order_line_item_model.dart';

abstract class OrderModel {
  int get id;

  int get tenant_id;

  int? get location_id;

  String get code;

  String? get note;

  String get created_on;

  String? get finalized_on;

  String? get completed_on;

  String? get cancelled_on;

  String get modified_on;

  AddressModel? get billing_address;

  AddressModel? get shipping_address;

  String get phone_number;

  int get total;

  int get total_discount;

  DeliveryFeeModel? get delivery_fee;

  String? get expected_delivery_type;

  int? get expected_payment_method_id;

  String? get status;

  String? get ship_on;

  List<OrderLineItemModel>? get order_line_items;

  List<PrepaymentModel>? get prepayments;

  List<FulfillmentModel>? get fulfillments;

  FulfillmentModel? get fulfillmentMax;

  int get actualPayment;
}