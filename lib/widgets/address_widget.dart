

import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            children: [
              SvgPicture.asset(Assets.icons.icLocation, width: 17, height: 17),
              SizedBox(width: 5),
              Text('huannv',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 14),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis),
              SizedBox(width: 5),
              SvgPicture.asset(Assets.icons.icDivider),
              SizedBox(width: 5),
              Text('0239432042048320',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 14),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis),
              const Spacer(),
              Icon(Icons.arrow_forward_ios, size: 22),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32, bottom: 10),
          child: Text('123, xã Vĩnh Hậu, huyện Hòa Bình, Bạc Liêu',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 12, color: Color(0xffafafaf)),
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
        ),
      ],
    );
  }
}