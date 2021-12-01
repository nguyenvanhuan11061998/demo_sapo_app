import 'package:demo_sapo_app/domain/model/warranty_card/warranty_card_model.dart';
import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:demo_sapo_app/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsAmusementTicketItem extends StatelessWidget {
  WarrantyCardModel data;

  DetailsAmusementTicketItem({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios,
                        size: 20, color: Colors.black)),
                Expanded(
                    child: Text(data.item.title,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 20),
                        textAlign: TextAlign.center)),
              ],
            ),
          ),
          Container(
              color: Color(0xffe8e8e8),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                children: [
                  Text('Mã',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 14, color: Color(0xff8b8b8b))),
                  SizedBox(width: 100),
                  Text('WCN067676',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 14)),
                  SizedBox(width: 20),
                  InkWell(
                      onTap: () {
                        // copy thông tin
                        Clipboard.setData(ClipboardData(text: data.code));
                        Navigator.pop(context);
                        // show một snack bar thông báo (chức năng giống toast)
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Đã sao chép thông tin!')));
                      },
                      child: SvgPicture.asset(
                        Assets.icons.icCopy,
                        color: const Color(0xffd10000),
                        width: 20,
                        height: 20,
                      )),
                ],
              )),
          Container(
              color: Color(0xffe8e8e8),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                children: [
                  Text('Hạn sử dụng',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 14, color: Color(0xff8b8b8b))),
                  SizedBox(width: 40),
                  Text(
                      'HSD: ${data.item.warranty_term.end_date.formatDDMMYYYY()}',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 14)),
                  SizedBox(width: 30),
                ],
              )),
          Container(
              color: Color(0xffe8e8e8),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                children: [
                  Text('Thông tin khách hàng',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 14, color: Color(0xff8b8b8b))),
                ],
              )),
          Container(
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 15),
              child: Row(
                children: [
                  Text('Họ và tên',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 14, color: Color(0xff8b8b8b))),
                  Spacer(),
                  Text('A ĐOÀN',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 14)),
                ],
              )),
          Container(
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 50),
              child: Row(
                children: [
                  Text('Số điện thoại',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 14, color: Color(0xff8b8b8b))),
                  Spacer(),
                  Text('0392743927',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 14, color: Color(0xff8b8b8b))),
                ],
              )),
        ],
      ),
    );
  }
}
