


import 'package:demo_sapo_app/data/datasource/auth_api_service.dart';
import 'package:demo_sapo_app/domain/model/warranty_card/warranty_card_model.dart';

class AuthRepository {

  AuthApiService authApiService = AuthApiService();

  Future<List<WarrantyCardModel>> getWarrantyCard({int? page}) {
    return authApiService.getWarrantyCardModel(page: page);
  }

}