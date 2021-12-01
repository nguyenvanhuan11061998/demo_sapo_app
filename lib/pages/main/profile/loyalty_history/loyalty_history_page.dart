import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:demo_sapo_app/pages/main/profile/loyalty_history/reward_point_widget.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 5,
                margin: EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: Assets.images.imgBgCoins, fit: BoxFit.cover),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 18),
                                Text('Điểm thưởng',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption!
                                        .copyWith(fontSize: 20, color: Colors.black)),
                                SizedBox(height: 20),
                                Text('30 đ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption!
                                        .copyWith(
                                            fontSize: 28,
                                            color: Color(0xffd10000),
                                    fontWeight: FontWeight.bold)),
                                SizedBox(height: 30),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('Điểm thưởng tích lũy',
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(fontSize: 19, color: Colors.black, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('Lịch sử điểm thưởng tích lũy',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 13)),
            ),
            SizedBox(height: 20),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  //ClipRRect: tạo hình, viền cho child bên trong nó
                  child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: ListView.separated(
                    itemBuilder: (context, index) {
                      return RewardPointWidget();
                    },
                    separatorBuilder: (context, index) {
                      return Divider(height: 1, color: Colors.black);
                    },
                    itemCount: 20),
            ),
                )),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
