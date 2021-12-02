import 'package:demo_sapo_app/domain/voucher_model.dart';
import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios,
                        size: 20, color: Colors.black)),
                Expanded(
                  child: Text('Miễn phí vận chuyển',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 20),
                      textAlign: TextAlign.center),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    Clipboard.setData(ClipboardData(text: 'fdhjsfhdsjkhfskf'));
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Đã sao chép thông tin')));
                  },
                  child: SvgPicture.asset(Assets.icons.icCopy,
                      color: Color(0xffd10000), width: 20, height: 20),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Hạn sử dụng',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, color: Color(0xff7d7d7d))),
                SizedBox(width: 37),
                Text('HSD: Vô thời hạn',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, color: Color(0xff7d7d7d))),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Điều kiện',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, color: Color(0xff7d7d7d))),
                SizedBox(width: 60),
                Text('Đơn hàng tối thiểu 200.000 đ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, color: Color(0xff7d7d7d))),
              ],
            ),
          ),
          Container(
            height: 200,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Áp dụng',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xffd10000),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    minimumSize: Size(double.infinity, 50))),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
