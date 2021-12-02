import 'package:demo_sapo_app/domain/voucher_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemVoucherBottomSheet extends StatelessWidget {
  VoucherModel voucherModel;

  ItemVoucherBottomSheet({required this.voucherModel, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
                Text('Miễn phí vận chuyển',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 20),
                    textAlign: TextAlign.center)
              ],
            ),
          ),
          Row(
            children: [
              Text('Mã',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 14, color: Color(0xff7d7d7d))),
              SizedBox(width: 100),
              Text('FREESHIP',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 14, color: Color(0xff7d7d7d))),

            ],
          )
        ],
      ),
    );
  }
}
