

import 'package:demo_sapo_app/domain/model/order/prepayment_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'prepayment_dto.g.dart';

@JsonSerializable()
class PrepaymentDto extends PrepaymentModel {
  @override
  final double amount;

  @override
  final int id;

  @override
  final double paid_amount;

  @override
  final String? paid_on;

  PrepaymentDto(this.amount, this.id, this.paid_amount, this.paid_on);

  factory PrepaymentDto.fromJson(Map<String, dynamic> json) {
    return _$PrepaymentDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PrepaymentDtoToJson(this);
  }
}