

import 'package:demo_sapo_app/data/datasource/product_api_service.dart';
import 'package:demo_sapo_app/domain/model/home_config/product.dart';
import 'package:demo_sapo_app/domain/product_repository.dart';
import 'package:demo_sapo_app/domain/voucher_model.dart';

class ProductRepositoryImpl implements ProductRepository{
  final ProductApiService _productApiService = ProductApiService();


  @override
  Future<List<VoucherModel>> getVoucher() {
    return _productApiService.getVoucher();
  }

  @override
  Future<List<ProductModel>> searchProduct({List<int>? categoryIds}) {
    return _productApiService.searchProduct(categoryIds: categoryIds);
  }

  @override
  Future<ProductModel> productDetail(int id) {
    return _productApiService.productDetail(id);
  }



  @override
  Future<List<ProductModel>> searchProductSuggest({List<int>? categoryIds}) {
   return _productApiService.searchProductSuggest(categoryIds: categoryIds);
  }

  @override
  Future<List<ProductModel>> searchProducts(String query) {
    return _productApiService.searchProducts(query);
  }

  @override
  Future<List<String>> getTags() {
    return _productApiService.getTags();
  }



}