import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:demo_sapo_app/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'order_detail_page.dart';

class ProductDetailWidget extends StatelessWidget {
  OrderDetailParams orderDetailParams;

  ProductDetailWidget({required this.orderDetailParams, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.icons.icBox),
              SizedBox(width: 10),
              Expanded(
                child: Text('Sản phẩm',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14)),
              )
            ],
          ),
          SizedBox(height: 10),
          ...List.generate(
              orderDetailParams.model.order_line_items!.length,
              (index) => Container(
                    padding: EdgeInsets.symmetric(vertical: 3),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 10),
                        SvgPicture.asset(Assets.icons.icLogo,
                            width: 80, height: 80),
                        SizedBox(width: 20),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                orderDetailParams.model.order_line_items![index]
                                    .product_name,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis),
                            SizedBox(height: 10),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                    '${orderDetailParams.model.order_line_items![index].price.toMoney()}đ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold)),
                                Spacer(),
                                Text(
                                    'Số lượng: ${orderDetailParams.model.order_line_items![index].quantity.toInt()}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold)),
                              ],
                            )
                          ],
                        ))
                      ],
                    ),
                  )),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Thành tiền',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 13)),
              Spacer(),
              Text('${orderDetailParams.model.actualPayment.toMoney()}đ',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 13)),
            ],
          ),
          SizedBox(height: 10),
          RichText(text: TextSpan(
            children: [
              TextSpan(text: 'Vui lòng thanh toán ', style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontSize: 11,  color: Color(0xff909090))),
              TextSpan(text: '${orderDetailParams.model.actualPayment.toMoney()}đ ', style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 11, color: Color(0xffd10000))),
              TextSpan(text: 'khi nhận hàng', style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 11, color: Color(0xff909090))),
            ]
          ))
        ],
      ),
    );
  }
}
