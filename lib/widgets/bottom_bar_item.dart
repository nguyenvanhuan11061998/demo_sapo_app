import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBarItem extends StatefulWidget {
  bool isSelected;
  String iconPath;
  String title;

  BottomBarItem(
      {required this.isSelected,
      required this.iconPath,
      required this.title,
      Key? key})
      : super(key: key);

  @override
  BottomBarItemState createState() {
    return BottomBarItemState();
  }
}

class BottomBarItemState extends State<BottomBarItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      alignment: Alignment.center,
      child: Column(
        children: [
          SvgPicture.asset(widget.iconPath, color: widget.isSelected ? Color(0xffd10000) : Color(0xff9e9e9e), height: 22),
          const SizedBox(height: 5),
          Text(widget.title, style: Theme.of(context).textTheme.caption?.copyWith(color: widget.isSelected ? Color(0xffd10000) : Color(0xff9e9e9e))),
        ],
      ),
    );
  }
}
