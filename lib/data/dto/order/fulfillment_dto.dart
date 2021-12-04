


import 'package:demo_sapo_app/domain/model/order/fulfillment_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fulfillment_dto.g.dart';

@JsonSerializable()
class FulfillmentDto extends FulfillmentModel {
  @override
  final int id;

  @override
  final String? packed_on;

  @override
  final String? shipped_on;

  FulfillmentDto(this.id, this.packed_on, this.shipped_on);

  factory FulfillmentDto.fromJson(Map<String, dynamic> json) {
    return _$FulfillmentDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$FulfillmentDtoToJson(this);
  }
}