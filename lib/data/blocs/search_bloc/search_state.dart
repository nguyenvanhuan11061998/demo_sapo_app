

import 'package:demo_sapo_app/domain/model/home_config/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_state.freezed.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState(List<ProductModel> product) = SearchStateData;
  const factory SearchState.loading() = SearchStateLoading;
  const factory SearchState.normal() = SearchStateNormal;
  const factory SearchState.error(dynamic error) = SearchStateError;
}