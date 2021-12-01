

import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RewardPointWidget extends StatelessWidget {
  const RewardPointWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('30/11/2021', style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text ('Thanh toán bằng điểm', style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 13, color: Color(
                  0xff727272))),
              Spacer(),
              Text('-1', style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14)),
              SizedBox(width: 10),
              SvgPicture.asset(Assets.icons.icDolar, width: 18, height: 18),
            ],
          )
        ],
      ),
    );
  }
}
