

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCommentWidget extends StatelessWidget {
  const ItemCommentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          Icon(Icons.account_circle_outlined, size: 24),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sapo Test', style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14)),
              SizedBox(width: 10),
              Text('khhfjdksfhdjsfhsshf', style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 13)),
            ],
          )
        ],
      ),
    );
  }
}
