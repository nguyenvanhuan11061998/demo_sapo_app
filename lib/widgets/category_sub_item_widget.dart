

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategorySubItemWidget extends StatelessWidget {

  String title;
  VoidCallback onPress;

  CategorySubItemWidget({required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xffe0e0e0)
      ),
      width: 64,
      height: 64,
      child: InkWell(
        onTap: () {
          onPress;
        },
        child: Center(
          child: Text(
            title, style: Theme.of(context).textTheme.bodyText2,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
      )
    );
  }

}