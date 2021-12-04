

import 'package:demo_sapo_app/domain/model/order/delivery_fee_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_fee_dto.g.dart';

@JsonSerializable()
class DeliveryFeeDto extends DeliveryFeeModel {

  @override
  final double? fee;

  @override
  final String? shipping_cost_name;

  DeliveryFeeDto(this.fee, this.shipping_cost_name);

  factory DeliveryFeeDto.fromJson(Map<String, dynamic> json) {
    return _$DeliveryFeeDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DeliveryFeeDtoToJson(this);
  }
}