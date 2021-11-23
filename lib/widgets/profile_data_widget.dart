import 'dart:core';

import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileDataWidget extends StatelessWidget {
  int point;
  int ticket;
  int code;

  ProfileDataWidget(
      {required this.point, required this.ticket, required this.code, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Card(
        margin: EdgeInsets.all(16),
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {

                },
                child: HeaderItemWidget(
                  title: 'Coin',
                  image: Assets.icons.icDolar,
                  description: '$point điểm',
                  mainColor: 0xffffc700,
                  backgroundColor: 0xffFEFAED,
                ),
              ),
              InkWell(
                onTap: () {

                },
                child: HeaderItemWidget(
                  title: 'Vé vui chơi',
                  image: Assets.icons.icTicket,
                  description: '$ticket vé',
                  mainColor: 0xffe53535,
                  backgroundColor: 0xfffff2f2,
                ),
              ),
              InkWell(
                onTap: () {

                },
                child: HeaderItemWidget(
                  title: 'Mã giảm giá',
                  image: Assets.icons.icVoucher2,
                  description: '$code mã',
                  mainColor: 0xff004fc4,
                  backgroundColor: 0xffe8edfb,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderItemWidget extends StatelessWidget {
  String image;
  String title;
  String description;
  int mainColor;
  int backgroundColor;

  HeaderItemWidget({
    required this.image,
    required this.title,
    required this.description,
    required this.mainColor,
    required this.backgroundColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92,
      height: 92,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(backgroundColor)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          SvgPicture.asset(image,
              width: 23, height: 23),
          SizedBox(height: 10),
          Text(title,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Color(mainColor), fontSize: 12)),
          Spacer(),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: Color(mainColor),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                description,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Colors.white, fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
