


import 'package:demo_sapo_app/domain/model/order/order_model.dart';

abstract class OrderRepository {
  Future<List<OrderModel>> getOrders(String status, int page);

  Future<bool> cancelOrder(int idProduct);
}