

import 'package:demo_sapo_app/domain/voucher_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'voucher_state.freezed.dart';

@freezed
abstract class VoucherState with _$VoucherState {
  const factory VoucherState(List<VoucherModel> listData) = VoucherStateData;
  const factory VoucherState.loading() = VoucherStateLoading;
  const factory VoucherState.error(dynamic error) = VoucherStateError;
}