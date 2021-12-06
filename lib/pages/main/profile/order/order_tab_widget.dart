import 'package:demo_sapo_app/data/blocs/order/order_datasource.dart';
import 'package:demo_sapo_app/data/repository/order_repository_imp.dart';
import 'package:demo_sapo_app/domain/model/order/order_model.dart';
import 'package:demo_sapo_app/domain/model/order/status.dart';
import 'package:fl_paging/fl_paging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item_order_widget.dart';

class OrderTabWidget extends StatefulWidget {
  Status statusObj;
  OrderTabWidget({required this.statusObj, Key? key}) : super(key: key);

  @override
  _OrderTabWidgetState createState() => _OrderTabWidgetState();
}

class _OrderTabWidgetState extends State<OrderTabWidget> {
  late OrderDatasource _datasource;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _datasource = OrderDatasource(OrderRepositoryImpl(), widget.statusObj);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: PagingListView<OrderModel> (
        itemBuilder: (context, data, child) {
          return ItemOrderWidget(key: ValueKey(data.id), model: data, status: widget.statusObj, onRefreshData: () {
            setState(() {
              // call lại api, page sẽ tự động load lại data
              _datasource = OrderDatasource(OrderRepositoryImpl(), widget.statusObj);
            });
          });
        },
        separatorBuilder: (context, index) {
          return Container(height: 5, color: Color(0xffe3e3e3));
        },
        pageDataSource: _datasource,
      )
    );
  }
}
