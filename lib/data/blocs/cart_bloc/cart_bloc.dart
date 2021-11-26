


import 'package:demo_sapo_app/data/dto/cart/cart/cart_dto.dart';
import 'package:demo_sapo_app/data/dto/cart/cart/cart_item_dto.dart';
import 'package:demo_sapo_app/domain/model/home_config/product.dart';
import 'package:demo_sapo_app/data/dto/product/product_dto.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';


/// CartBloc: bloc chứa logic, các trạng thái dữ liệu về cart, trạng thái là đối tượng CartDto
class CartBloc extends HydratedCubit<CartDto?> {
  CartBloc() : super(CartDto([], 1, null)){
    hydrate();
  }


  @override
  CartDto? fromJson(Map<String, dynamic> json) {
    try {
      if (json.values.isEmpty) return null;
      return CartDto.fromJson(json);
    } catch(error) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(CartDto? state) {
    return state?.toJson() ?? {};
  }

  void addCartItem(int variantsId, ProductModel productModel, int countItem) {
    final newCartItem = CartItemDto(countItem, productModel.id??0, productModel as ProductDto, variantsId);
    if(state == null || state!.cart.isEmpty) {
      if (state == null) {
        emit(CartDto([newCartItem], 1, null));
      } else{
        emit(state!.copyWithCartItem([newCartItem]));
      }
    } else {
      for(int i = 0; i < state!.cart.length; i++ ) {
        if (state!.cart.elementAt(i).id == productModel.id) {
          state!.cart.elementAt(i).setCount(state!.cart.elementAt(i).count + countItem);
          emit(state);
          return;
        }
      }
      final cart = [...state!.cart, newCartItem];
      emit(state?.copyWithCartItem(cart));
    }
  }

  void deleteCartItem(int productId) {
    state!.cart.forEach((cartItemDto) {
      if (cartItemDto.id == productId) {
        state!.cart.remove(cartItemDto);
        emit(state);
        return;
      }
    });
  }
}