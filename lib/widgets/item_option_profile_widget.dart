

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemOptionProfileWidget extends StatelessWidget {
  String icon;
  String title;
  VoidCallback onPress;

  ItemOptionProfileWidget({required this.icon, required this.title, required this.onPress, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () => onPress(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          width: double.infinity,
          child: Row(
            children: [
              SvgPicture.asset(icon),
              SizedBox(width: 10),
              Text(title, style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold)),
              Spacer(),
              Icon(Icons.arrow_forward_ios, size: 20)
            ],
          ),
        ),
      ),
    );
  }

}