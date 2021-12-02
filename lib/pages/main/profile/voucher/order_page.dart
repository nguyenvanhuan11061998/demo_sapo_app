
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  late TabController _tabController;

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
          ),
        ],
      ),
    );
  }
}
