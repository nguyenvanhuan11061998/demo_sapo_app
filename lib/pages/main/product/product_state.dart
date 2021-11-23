


import 'package:demo_sapo_app/domain/model/home_config/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_state.freezed.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState(List<ProductModel> data) = ProductStateData;
  const factory ProductState.loading() = ProductStateLoading;
  const factory ProductState.error(error) = ProductStateError;
}