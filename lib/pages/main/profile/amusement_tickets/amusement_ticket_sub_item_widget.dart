import 'package:demo_sapo_app/domain/model/warranty_card/warranty_card_model.dart';
import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AmusementTicketSubItemWidget extends StatefulWidget {
  final WarrantyCardModel data;

  const AmusementTicketSubItemWidget({required this.data, Key? key})
      : super(key: key);

  @override
  _AmusementTicketSubItemWidgetState createState() =>
      _AmusementTicketSubItemWidgetState();
}

class _AmusementTicketSubItemWidgetState
    extends State<AmusementTicketSubItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8, bottom: 8),
                  child: Image(image: Assets.images.imageLogo, width: 80, height: 80),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    //DottedDecoration: tạo một đường line với các dấu chấm
                    decoration: DottedDecoration(linePosition: LinePosition.left),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tấm vé diệu kỳ tháng 6',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(fontSize: 15, color: Colors.black),
                                overflow: TextOverflow.ellipsis),
                            SizedBox(height: 5),
                            Text('Mã: EWR43243234',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontSize: 14, color: Color(0xff8b8b8b)),
                                overflow: TextOverflow.ellipsis),
                            SizedBox(height: 16),
                            Text('HSD: 25/02/2022',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontSize: 14, color: Color(0xff8b8b8b)),
                                overflow: TextOverflow.ellipsis)
                          ],
                        )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Icon(Icons.keyboard_arrow_down,
                                  color: Colors.black),
                            ),
                            SizedBox(height: 16),
                            Text("Chi tiết",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(color: Colors.blue, fontSize: 12)),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

          AnimatedContainer(duration: Duration(seconds: 1))
        ],
      ),
    );
  }
}
