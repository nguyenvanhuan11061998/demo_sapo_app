

import 'package:demo_sapo_app/data/dto/cart_dto.dart';
import 'package:demo_sapo_app/domain/model/home_config/product.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class CartBloc extends HydratedCubit<CartDto?> {
  CartBloc() : super(CartDto());


  @override
  CartDto? fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic>? toJson(CartDto? state) {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  void addCartItem(ProductModel productModel, int countItem) {

  }
}