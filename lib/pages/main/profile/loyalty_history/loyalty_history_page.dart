import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoyaltyHistoryPage extends StatefulWidget {
  static const String path = 'LoyaltyHistoryPage';

  const LoyaltyHistoryPage({Key? key}) : super(key: key);

  @override
  _LoyaltyHistoryPageState createState() => _LoyaltyHistoryPageState();
}

class _LoyaltyHistoryPageState extends State<LoyaltyHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tích điểm'),
        backgroundColor: Color(0xffd10000),
        centerTitle: false,
      ),
      body: Container(
        color: Color(0xfff5f5f5),
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.all(20),
              child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Assets.images.imgBgCoins,
                      fit: BoxFit.cover
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Text('Điểm thưởng',
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(fontSize: 22)),
                      SizedBox(height: 30),
                      Text('30 đ',
                          style: Theme.of(context).textTheme.caption!.copyWith(
                              fontSize: 30, color: Color(0xffd10000))),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
