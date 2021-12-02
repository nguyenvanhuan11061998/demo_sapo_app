
import 'package:demo_sapo_app/domain/voucher_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'voucher_dto.g.dart';

@JsonSerializable()
class VoucherDto implements VoucherModel {

  @override
  String? code;

  @override
  String? description;

  @override
  @JsonKey(name: 'discount_percent')
  double? discountPercent;

  @JsonKey(name: 'discount_amount')
  double? discountAmount;

  @override
  @JsonKey(name: 'end_date')
  String? endDate;

  @override
  int? id;

  @override
  String? name;

  @override
  @JsonKey(name: 'order_total_required')
  double? orderTotalRequired;

  String? status;

  @override
  String? start_date;

  VoucherDto(this.code, this.description, this.discountPercent, this.endDate,
      this.id, this.name, this.orderTotalRequired, this.discountAmount, this.status, this.start_date);

  factory VoucherDto.fromJson(Map<String, dynamic> json) {
    return _$VoucherDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$VoucherDtoToJson(this);
  }

}