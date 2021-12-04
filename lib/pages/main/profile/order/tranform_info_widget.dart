


import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TranformInfoWidget extends StatefulWidget {
  const TranformInfoWidget({Key? key}) : super(key: key);

  @override
  _TranformInfoWidgetState createState() => _TranformInfoWidgetState();
}

class _TranformInfoWidgetState extends State<TranformInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.icons.icDelivery),
              SizedBox(width: 10),
              Expanded(
                child: Text('Thông tin vận chuyển', style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 14)),
              ),
              SizedBox(width: 10),
              Text('XEM', style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 15, color: Colors.blue)),
            ],
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Text('Ninja van', style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 12, color: Color(0xff929292))),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: 7,
                  height: 7,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Text('Đơn hàng đã được đặt hàng', style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 13, color: Colors.blue)),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 33),
            child: Text('30/11/2021 12:32:42', style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 12, color: Color(0xff929292))),
          ),
          SizedBox(height: 14),
        ],
      ),
    );
  }
}
