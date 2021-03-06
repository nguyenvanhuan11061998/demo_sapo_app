import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBarItem extends StatefulWidget {
  bool isSelected;
  String iconPath;
  String title;
  int countCart;

  BottomBarItem(
      {required this.isSelected,
      required this.iconPath,
      required this.title, this.countCart = 0,
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
      padding: const EdgeInsets.only(top: 10),
      alignment: Alignment.center,
      child: Column(
        children: [
          Stack(children: [
            Positioned(
              child: Padding(
                padding: const EdgeInsets.only(top:8.0, right: 4, left: 4),
                child: SvgPicture.asset(widget.iconPath, color: widget.isSelected ? Color(0xffd10000) : Color(0xff9e9e9e), height: 22),
              ),
            ),
            Positioned(
              right: 0, top: 0,
                child: widget.countCart > 0 ?  Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('${widget.countCart}', style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white, fontSize: 12)),
              ),
            ) : Container()),
          ],),
          const SizedBox(height: 5),
          Text(widget.title, style: Theme.of(context).textTheme.caption?.copyWith(color: widget.isSelected ? Color(0xffd10000) : Color(0xff9e9e9e))),
        ],
      ),
    );
  }
}
