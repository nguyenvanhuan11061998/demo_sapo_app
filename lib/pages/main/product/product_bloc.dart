


import 'package:demo_sapo_app/data/datasource/product_api_service.dart';
import 'package:demo_sapo_app/domain/model/home_config/product.dart';
import 'package:demo_sapo_app/pages/main/product/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductBloc extends Cubit<ProductState> {

  ProductApiService _productApiService = ProductApiService();

  ProductBloc() : super(ProductState.loading()) {

  }

  Future getProductOfCategory({List<int>? categoryIds}) async {
    _productApiService.searchProductSuggest(categoryIds: categoryIds).then((value) {
      emit(ProductState(value));
    });
  }

}