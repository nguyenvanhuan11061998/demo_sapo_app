

import 'package:demo_sapo_app/domain/model/order/status.dart';
import 'package:flutter/material.dart';

class OrderBloc {
  List<Status> statusList = [];
  late TabController tabController;

  void init (TickerProvider tickerProvider) {
    statusList.add(Status('Đặt hàng', status: 'draft'));
    statusList.add(Status('Duyệt', status: 'finalized', packed_status: 'unpacked'));
    statusList.add(Status('Đóng gói', status: 'finalized', packed_status: 'packed', fulfillment_status: 'unshipped'));
    statusList.add(Status('Xuất kho', status: 'shipped', fulfillment_status: 'shipped', composite_fulfillment_status: 'fulfilled'));
    statusList.add(Status('Hoàn thành', status: 'completed',));
    statusList.add(Status('Hủy', status: 'cancelled'));
    statusList.add(Status('Hủy giao - chờ nhận', status: 'finalized', composite_fulfillment_status: 'fulfilled_cancelling'));
    statusList.add(Status('Hủy giao - đã nhận', status: 'finalized', composite_fulfillment_status: 'composite_fulfillment_status'));

    tabController = TabController(length: statusList.length, vsync: tickerProvider);
  }
}