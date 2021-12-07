


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  String title;
  VoidCallback onClick;
  TagWidget({required this.title, required this.onClick, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: Material(
        color: Color(0xffd7d7d7),
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          onTap: () {
            onClick();
          },
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text(title, style: Theme.of(context).textTheme.bodyText1!.copyWith(color: const Color(
                0xff929292), fontSize: 13, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
