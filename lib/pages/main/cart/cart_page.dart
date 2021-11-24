import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:demo_sapo_app/widgets/address_widget.dart';
import 'package:demo_sapo_app/widgets/item_cart_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartPage extends StatefulWidget {
  @override
  CartPageState createState() {
    return CartPageState();
  }
}

class CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Giỏ hàng'),
        backgroundColor: Color(0xffd10000),
        centerTitle: false,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AddressWidget(),
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ItemCartWidget();
                    },
                    separatorBuilder: (context, index) {
                      return Container(
                          width: double.infinity,
                          height: 8,
                          color: Color(0xffe5e5e5));
                    },
                    itemCount: 10)),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 14, 16, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      Assets.icons.icVoucher,
                      width: 18,
                      height: 18,
                    ),
                    SizedBox(width: 10),
                    Text('Voucher',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 14)),
                    Spacer(),
                    Text('Chọn mã',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 14, color: Color(0xff9e9e9e))),
                    SizedBox(width: 20),
                    const Icon(Icons.arrow_forward_ios, size: 22, color: Color(
                        0xff787878)),
                    SizedBox(width: 20),
                  ],
                ),
              ),
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
