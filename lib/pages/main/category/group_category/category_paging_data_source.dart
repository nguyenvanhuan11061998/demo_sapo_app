import 'package:demo_sapo_app/data/repository/product_repository_impl.dart';
import 'package:demo_sapo_app/domain/model/home_config/product.dart';
import 'package:fl_paging/fl_paging.dart' as paging;
import 'package:get_it/get_it.dart';
import 'package:tuple/tuple.dart';



class CategoryPagingDataSource extends paging.PageKeyedDataSource<int, ProductModel> {
  final ProductRepositoryImpl _productRepositoryImpl = GetIt.instance.get();
  int categoryId;

  CategoryPagingDataSource(this.categoryId) : super(pageSize: 20);

  @override
  Future<Tuple2<List<ProductModel>, int>> loadInitial(int pageSize) async {
    List<ProductModel> data = await _productRepositoryImpl.searchProduct(categoryIds: [categoryId]);
    return Tuple2(data, 1);
  }

  @override
  Future<Tuple2<List<ProductModel>, int>> loadPageAfter(int params, int pageSize) async {
    List<ProductModel> data = await _productRepositoryImpl.searchProduct(categoryIds: [categoryId]);
    return Tuple2(data, params + 1);
  }

}