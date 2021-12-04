import 'package:demo_sapo_app/domain/model/order/order_model.dart';
import 'package:demo_sapo_app/domain/model/order/status.dart';
import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:demo_sapo_app/utils/extensions.dart';

import 'order_detail_page.dart';

class ItemOrderWidget extends StatelessWidget {
  OrderModel model;
  Status status;

  ItemOrderWidget({required this.model, required this.status, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, OrderDetailPage.path, arguments: OrderDetailParams(model, status));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ...List.generate(
                      model.order_line_items?.length ?? 0,
                      (index) => Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                SvgPicture.asset(Assets.icons.icLogo,
                                    width: 80, height: 80, fit: BoxFit.fill),
                                SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          model.order_line_items![index]
                                              .product_name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                              '${model.order_line_items![index].price.toMoney()}đ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .copyWith(
                                                      fontSize: 13,
                                                      color: Color(0xffd10000))),
                                          Expanded(
                                              child: Text(
                                            'Số lượng: ${model.order_line_items![index].quantity.toInt()}',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .copyWith(fontSize: 12),
                                            textAlign: TextAlign.end,
                                          )),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                      ))
                ],
              ),
            ),
            SizedBox(height: 5),
            Divider(height: 1, color: Colors.black),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('${model.order_line_items!.length} sảm phẩm',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 12)),
                  Spacer(),
                  Text('Thành tiền: ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 12)),
                  SizedBox(width: 2),
                  Text('${model.actualPayment.toMoney()}đ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 12, color: Color(0xffd10000))),
                ],
              ),
            ),
            Divider(height: 1, color: Colors.black),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Trạng thái đơn hàng',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 12)),
                  Spacer(),
                  Text(status.name,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 12, color: Colors.blue)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
