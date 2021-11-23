

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SapoBottomSheet extends StatelessWidget {
  final Widget child;


  SapoBottomSheet({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      // cách GestureDetector phản ứng với các cử chỉ của người dùng.
      // HitTestBehavior.opaque:
      behavior: HitTestBehavior.opaque,
      child: Align(
        // cho phép bottom sheet chỉ show dưới bottom, giới hạn kích thước bottom
        alignment: Alignment.bottomCenter,
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: ShapeDecoration(
              color: Color(0xffffffff),
              shape: RoundedRectangleBorder (
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(12)
                  )
              )
          ),
          child: SafeArea(
            // top: false,
            child: child,
          ),
        ),
      ),
    );
  }

}