

import 'package:demo_sapo_app/data/datasource/order_api_service.dart';
import 'package:demo_sapo_app/domain/model/order/order_model.dart';

import 'order_repository.dart';

class OrderRepositoryImpl implements OrderRepository{

  OrderApiService orderApiService = OrderApiService();

  @override
  Future<List<OrderModel>> getOrders(String status, int page) {
    return orderApiService.getOrders(status, page);
  }

  @override
  Future<bool> cancelOrder(int idProduct) {
    return orderApiService.cancelOrder(idProduct);
  }


}