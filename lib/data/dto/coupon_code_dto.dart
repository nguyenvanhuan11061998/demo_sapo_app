

import 'package:demo_sapo_app/domain/voucher_model.dart';
import 'package:demo_sapo_app/data/dto/voucher_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonSerializable()
class CouponCodeDto implements VoucherModel {

  VoucherDto? coupon_promotion;

  @override
  String? code;

  @override
  String? get description => coupon_promotion?.description;

  @override
  int? id;

  @override
  String? status;

  @override
  double? get discountAmount => coupon_promotion?.discountAmount;

  @override
  double? get discountPercent => coupon_promotion?.discountPercent;

  @override
  String? get endDate => coupon_promotion?.endDate;


  @override
  String? get name => coupon_promotion?.name;

  @override
  double? get orderTotalRequired => coupon_promotion?.orderTotalRequired;

  @override
  String? get start_date => throw UnimplementedError();

  CouponCodeDto(this.coupon_promotion, this.code, this.id, this.status);

}