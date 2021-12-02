import 'package:demo_sapo_app/data/blocs/voucher/voucher_bloc.dart';
import 'package:demo_sapo_app/domain/voucher_model.dart';
import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:demo_sapo_app/utils/extensions.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

import 'item_voucher_bottom_sheet.dart';

class ItemVoucherWidget extends StatelessWidget {
  VoucherModel voucherModel;

  ItemVoucherWidget({required this.voucherModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(Assets.icons.voucher.path, width: 80, height: 80),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: DottedDecoration(
                linePosition: LinePosition.left,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      voucherModel.name??'Voucher giảm 50% giá trị đơn hàng',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Đơn hàng tối thiểu ${voucherModel.orderTotalRequired??0.toInt().toMoney()}',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: Color(0xff878787), fontSize: 12),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            'HSD: ${context.read<VoucherBloc>().getDate(voucherModel.endDate)}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Color(0xff878787), fontSize: 12),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return ItemVoucherBottomSheet(voucherModel: voucherModel);
                            });
                          },
                          child: Text(
                            'Điều kiện',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.blue, fontSize: 12),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
