
import 'package:demo_sapo_app/data/repository/order_repository_imp.dart';
import 'package:demo_sapo_app/domain/model/order/order_model.dart';
import 'package:demo_sapo_app/domain/model/order/status.dart';
import 'package:fl_paging/fl_paging.dart' as paging;
import 'package:tuple/tuple.dart';

class OrderDatasource extends paging.PageKeyedDataSource<int, OrderModel> {

  OrderRepositoryImpl orderRepositoryImpl;
  Status status;


  OrderDatasource(this.orderRepositoryImpl, this.status) : super(pageSize: 20);

  @override
  Future<Tuple2<List<OrderModel>, int>> loadInitial(int pageSize) async {
    List<OrderModel> data = await orderRepositoryImpl.getOrders(status.status, 1);
    return Tuple2(data, 2);
  }

  @override
  Future<Tuple2<List<OrderModel>, int>> loadPageAfter(int params, int pageSize) async {
    List<OrderModel> data = await orderRepositoryImpl.getOrders(status.status, params);
    return Tuple2(data, params + 1);
  }

}