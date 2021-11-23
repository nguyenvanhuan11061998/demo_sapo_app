

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderStatusWidget extends StatelessWidget {
  String icon;
  String title;
  VoidCallback onPress;

  OrderStatusWidget({required this.icon, required this.title, required this.onPress, Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: onPress,
        child: SizedBox(
          height: 90,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(icon, width: 30, height: 30),
              SizedBox(height: 5),
              Text(title, style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 12))
            ],
          ),
        ),
      ),
    );
  }

}