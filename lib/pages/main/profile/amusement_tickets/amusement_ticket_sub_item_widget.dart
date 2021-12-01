import 'package:demo_sapo_app/domain/model/warranty_card/warranty_card_model.dart';
import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:demo_sapo_app/utils/extensions.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

import 'details_amusement_ticket_item.dart';

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
  bool checkShow = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
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
                  child: Image(
                      image: Assets.images.imageLogo, width: 80, height: 80),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    //DottedDecoration: tạo một đường line với các dấu chấm
                    decoration:
                        DottedDecoration(linePosition: LinePosition.left),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.data.item.title,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontSize: 15, color: Colors.black),
                                overflow: TextOverflow.ellipsis),
                            SizedBox(height: 5),
                            Text(widget.data.code,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontSize: 14, color: Color(0xff8b8b8b)),
                                overflow: TextOverflow.ellipsis),
                            SizedBox(height: 16),
                            Text('HSD: ${widget.data.item.warranty_term.end_date.formatDDMMYYYY()}',
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
                              onTap: () {
                                setState(() {
                                  checkShow = !checkShow;
                                });
                              },
                              child: checkShow
                                  ? Icon(Icons.keyboard_arrow_up,
                                      color: Colors.black)
                                  : Icon(Icons.keyboard_arrow_down,
                                      color: Colors.black),
                            ),
                            SizedBox(height: 16),
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    builder: (context) {
                                  return DetailsAmusementTicketItem(data: widget.data);
                                });
                              },
                              child: Text("Chi tiết",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          color: Colors.blue, fontSize: 12)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          // tạo một container cho phép sử dụng animation show view từ từ theo Duration
          AnimatedContainer(
            duration: Duration(seconds: 1),
            height: checkShow ? 70 : 0,
            child: Row(
              children: [
                Container(width: 92, color: Colors.transparent),
                Expanded(
                    child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: checkShow ? DottedDecoration() : BoxDecoration(),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                      ),
                      Expanded(child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                        child: SfBarcodeGenerator(value: 'WCN00014',
                        ),
                      ),)
                    ],
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
