


import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddressReceiveWidget extends StatelessWidget {
  const AddressReceiveWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.icons.icLocationOutline, width: 20),
              SizedBox(width: 10),
              Text('Địa chỉ người nhận', style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 14, color: Colors.black)),
            ],
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Text('test 0498374247834', style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 12, color: Color(0xffa5a5a5))),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Text('135a, thôn Thông Lộc, phường Cổ Thành, thành phố Chí Linh, tỉnh Hải Dương', style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 12, color: Color(0xffa5a5a5))),
          ),
        ],
      ),
    );
  }
}
