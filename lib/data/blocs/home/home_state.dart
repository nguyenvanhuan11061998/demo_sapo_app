import 'package:demo_sapo_app/domain/model/home_config/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

/**
 * các trạng thái của màn home
 */
@freezed
abstract class HomeState with _$HomeState {

  // trạg thái lấy được data và hiển thị ra màn hình
  const factory HomeState(List<ProductModel> products) = HomeStateData;
  // trạng thái loading của màn hình
  const factory HomeState.loading() = HomeStateLoading;
  // trạng thái màn hình lỗi data các loại
  const factory HomeState.error(dynamic error) = HomeStateError;
}