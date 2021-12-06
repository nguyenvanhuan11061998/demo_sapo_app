import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:demo_sapo_app/widgets/design_system/app_button_border_widget.dart';
import 'package:demo_sapo_app/widgets/item_option_profile_widget.dart';
import 'package:demo_sapo_app/widgets/order_status_widget.dart';
import 'package:demo_sapo_app/widgets/profile_data_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'order/order_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  ProfilePageState createState() {
    return ProfilePageState();
  }
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        backgroundColor: Color(0xffd10000),
        elevation: 0,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
                child: Container(
                    color: Color(0xffeeeeee),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: 150),
                          ItemOptionProfileWidget(
                            icon: Assets.icons.icDocument,
                            title: 'Sổ địa chỉ',
                            onPress: () {},
                          ),
                          SizedBox(height: 1),
                          ItemOptionProfileWidget(
                              icon: Assets.icons.icBag,
                              title: 'Đơn hàng',
                              onPress: () {
                                Navigator.pushNamed(context, OrderPage.path);
                              }),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: OrderStatusWidget(
                                    icon: Assets.icons.icBox,
                                    title: 'Chờ xác nhận',
                                    onPress: () {
                                      Navigator.pushNamed(context, OrderPage.path, arguments: 0);
                                    }),
                              ),
                              Expanded(
                                child: OrderStatusWidget(
                                    icon: Assets.icons.icConvert,
                                    title: 'Chờ lấy hàng',
                                    onPress: () {
                                      Navigator.pushNamed(context, OrderPage.path, arguments: 1);
                                    }),
                              ),
                              Expanded(
                                child: OrderStatusWidget(
                                    icon: Assets.icons.icTruckTime,
                                    title: 'Đang giao',
                                    onPress: () {
                                      Navigator.pushNamed(context, OrderPage.path, arguments: 3);
                                    }),
                              ),
                              Expanded(
                                child: OrderStatusWidget(
                                    icon: Assets.icons.icTruckRemove,
                                    title: 'Hủy giao',
                                    onPress: () {
                                      Navigator.pushNamed(context, OrderPage.path, arguments: 5);
                                    }),
                              ),
                            ],
                          ),
                          SizedBox(height: 6),
                          ItemOptionProfileWidget(
                              icon: Assets.icons.icPassword,
                              title: 'Điều khoản và điều kiện',
                              onPress: () {}),
                          SizedBox(height: 1),
                          ItemOptionProfileWidget(
                              icon: Assets.icons.icSecurity,
                              title: 'Chính sách',
                              onPress: () {}),
                          SizedBox(height: 1),
                          ItemOptionProfileWidget(
                              icon: Assets.icons.icCalling,
                              title: 'Liên hệ',
                              onPress: () {}),
                          SizedBox(height: 1),
                          ItemOptionProfileWidget(
                              icon: Assets.icons.icBuilding,
                              title: 'Thông tin công ty',
                              onPress: () {}),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                            child: AppButtonBoderWidget(
                              title: 'Đăng xuất',
                              backgroundColor: Colors.white,
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ))),
            Positioned.fill(
                child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                    color: Color(0xffd10000),
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(
                            MediaQuery.of(context).size.width, 50))),
              ),
            )),
            Positioned.fill(
                child: ProfileDataWidget(
              point: 99,
              ticket: 0,
              code: 4,
            ))
          ],
        ),
      ),
    );
  }
}
