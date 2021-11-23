
import 'package:demo_sapo_app/domain/model/home_config/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_detail_state.freezed.dart';

@freezed
abstract class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState(ProductModel productModel2) = ProductDetailStateData;
  const factory ProductDetailState.loading() = ProductDetailStateLoading;
  const factory ProductDetailState.error(dynamic error) = ProductDetailStateError;
}