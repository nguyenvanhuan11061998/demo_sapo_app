
import 'package:demo_sapo_app/domain/voucher_model.dart';

import 'model/home_config/product.dart';


abstract class ProductRepository {

  Future<List<VoucherModel>> getVoucher();

  Future<List<ProductModel>> searchProduct({List<int> categoryIds});

  Future<ProductModel> productDetail(int id);

  Future<List<ProductModel>> searchProductSuggest({List<int>? categoryIds});
}