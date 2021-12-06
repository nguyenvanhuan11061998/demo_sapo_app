import 'package:demo_sapo_app/domain/model/order/order_model.dart';
import 'package:demo_sapo_app/domain/model/order/status.dart';
import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:demo_sapo_app/pages/main/profile/order/product_detail_widget.dart';
import 'package:demo_sapo_app/pages/main/profile/order/tranform_info_widget.dart';
import 'package:demo_sapo_app/widgets/design_system/app_button_border_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'address_receive_widget.dart';
import 'bottom_cancel_order_widget.dart';

class OrderDetailParams {
  OrderModel model;
  Status status;

  OrderDetailParams(this.model, this.status);
}

class OrderDetailPage extends StatefulWidget {
  static const String path = 'OrderDetailPage';
  OrderDetailParams params;

  OrderDetailPage({required this.params, Key? key}) : super(key: key);

  @override
  _OrderDetailPageState createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  @override
  Widget build(BuildContext context) {
    final ctx = context;
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông tin đơn hàng'),
        centerTitle: false,
        backgroundColor: Color(0xffd10000),
      ),
      body: Container(
        color: Color(0xffe8e8e8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset(Assets.icons.icDocument),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: Text('Mã đơn hàng: SON93729847',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(fontSize: 14))),
                              Text('SAO CHÉP',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          fontSize: 15, color: Colors.blue))
                            ],
                          ),
                          SizedBox(height: 10),
                          Text('Ngày đặt hàng: 30/11/2020 10:54:21',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      fontSize: 12, color: Color(0xffafafaf))),
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              TranformInfoWidget(),
              SizedBox(height: 10),
              AddressReceiveWidget(),
              SizedBox(height: 10),
              ProductDetailWidget(orderDetailParams: widget.params),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        child: AppButtonBoderWidget(
          title: 'Hủy đơn',
          borderColor: Color(0xffd10000),
          backgroundColor: Colors.white,
          textColor: Color(0xffd10000),
          disableColor: Colors.white,
          onPressed: () {
            showModalBottomSheet(
                context: context,
                useRootNavigator: true,
                backgroundColor: Colors.transparent,
                isScrollControlled: true,
                builder: (context) => BottomCancelOrderWidget(
                      idProduct: widget.params.model.id,
                      cancelSuccess: () {
                        // Navigator.of(context, rootNavigator: false).pop(true);
                        // Navigator.pop(context, true);
                      },
                    )).then((value) => Navigator.pop(context, true));
          },
        ),
      ),
    );
  }
}
