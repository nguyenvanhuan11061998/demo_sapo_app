


import 'package:demo_sapo_app/data/repository/product_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'product_detail_state.dart';

class ProductDetailBloc extends Cubit<ProductDetailState> {
  ProductRepositoryImpl repository = GetIt.instance.get();

  final int productId;
  ProductDetailBloc(this.productId) : super(ProductDetailState.loading()) {
    repository.productDetail(productId).then((value) {
      emit(ProductDetailState(value));
    });
  }

}
