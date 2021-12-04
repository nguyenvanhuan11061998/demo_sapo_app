

import 'package:demo_sapo_app/data/blocs/order/order_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'order_tab_widget.dart';

class OrderPage extends StatefulWidget {
  static const path = 'OrderPage';

  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> with TickerProviderStateMixin {
  OrderBloc _orderBloc = OrderBloc();

  @override
  void initState() {
    super.initState();
    _orderBloc.init(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đơn hàng của tôi'),
        backgroundColor: Color(0xffd10000),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Container(
            height: 44,
            color: Colors.white,
            child: TabBar(
                controller: _orderBloc.tabController,
                indicatorColor: Color(0xffd10000),
                unselectedLabelColor: Colors.black,
                labelColor: Color(0xffd10000),
                indicatorPadding: EdgeInsets.only(left: 12, right: 12),
                isScrollable: true,
                tabs: List.generate(
                    _orderBloc.statusList.length,
                    (index) => Tab(
                          text: _orderBloc.statusList[index].name,
                        ))),
          ),
          Expanded(
              child: TabBarView(
                controller: _orderBloc.tabController,
                children: List.generate(_orderBloc.statusList.length,
                        (index) => OrderTabWidget(statusObj: _orderBloc.statusList[index])),
              ))
        ],
      ),
    );
  }
}
