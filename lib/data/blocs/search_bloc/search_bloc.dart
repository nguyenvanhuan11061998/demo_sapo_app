import 'package:demo_sapo_app/data/repository/product_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo_sapo_app/data/blocs/search_bloc/search_state.dart';
import 'package:get_it/get_it.dart';

class SearchBloc extends Cubit<SearchState> {
  ProductRepositoryImpl productRepositoryImpl = GetIt.instance.get();

  SearchBloc(SearchState initialState) : super(initialState);

  void searchProduct(String query) {
    emit(const SearchState.loading());
    productRepositoryImpl.searchProducts(query).then((value) {
      value.isNotEmpty
          ? emit(SearchState(value))
          : emit(
              const SearchState.error('Không tìm thấy sản phẩm cần tìm kiếm.'));
    });
  }

  Future<List<String>> getTags() {
    return productRepositoryImpl.getTags();
  }
}
