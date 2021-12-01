import 'package:demo_sapo_app/domain/model/warranty_card/warranty_card_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'amusement_ticket_sub_item_widget.dart';

class AmusementTicketItemWidget extends StatefulWidget {
  final WarrantyCardModel data;

  AmusementTicketItemWidget({required this.data, Key? key}) : super(key: key);

  @override
  _AmusementTicketItemWidgetState createState() =>
      _AmusementTicketItemWidgetState();
}

class _AmusementTicketItemWidgetState extends State<AmusementTicketItemWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return AmusementTicketSubItemWidget(data: widget.data);
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: widget.data.item.quantity.toInt());
  }
}
