

import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:demo_sapo_app/utils/extensions.dart';
import 'package:demo_sapo_app/widgets/design_system/app_button_border_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartPageBottom extends StatefulWidget {
  int totalPrice;

  CartPageBottom({Key? key, required this.totalPrice}) : super(key: key);

  @override
  _CartPageBottomState createState() => _CartPageBottomState();
}

class _CartPageBottomState extends State<CartPageBottom> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                  width: 15,
                  height: 15,
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
                        .copyWith(
                        fontSize: 14,
                        color: Color(0xff9e9e9e))),
                SizedBox(width: 20),
                const Icon(Icons.arrow_forward_ios,
                    size: 22, color: Color(0xff787878)),
                SizedBox(width: 20),
              ],
            ),
          ),
        ),
        Divider(height: 1),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 14, 16, 14),
            child: Row(
              children: [
                SvgPicture.asset(Assets.icons.icDolar,
                    width: 18, height: 18),
                SizedBox(width: 10),
                Text('Dùng Coin',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14)),
                Spacer(),
                Text('46 điểm',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14)),
                SizedBox(width: 10),
                // text view như bên ioss
                SizedBox(
                  width: 90,
                  child: CupertinoTextField(
                    // text hint placeholder
                    placeholder: 'Nhập điểm',
                    // placeholderStyle: style text hint của text field
                    placeholderStyle: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Color(0xffa8a8a8)),
                    style: Theme.of(context).textTheme.caption,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      shape: BoxShape.rectangle,
                      color: Color(0xffe0e0e0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          padding:
          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Tổng thanh toán',
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(
                          fontSize: 14, color: Colors.black)),
                  SizedBox(height: 3),
                  Text('${widget.totalPrice.toMoney()}đ',
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(
                          color: Color(0xffd10000),
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                ],
              ),
              Spacer(),
              SizedBox(
                width: 180,
                child: AppButtonBoderWidget(
                  title: 'Đặt hàng',
                  backgroundColor: Color(0xffd10000),
                  disableColor: Color(0xffd10000),
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
