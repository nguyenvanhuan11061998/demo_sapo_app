

import 'package:demo_sapo_app/data/repository/auth_repository.dart';
import 'package:demo_sapo_app/domain/model/warranty_card/warranty_card_model.dart';
import 'package:fl_paging/fl_paging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'amusement_ticket_datasource.dart';
import 'amusement_ticket_item_widget.dart';

class AmusementTicketsPage extends StatefulWidget {
  static const String path = 'AmusementTicketsPage';
  const AmusementTicketsPage({Key? key}) : super(key: key);

  @override
  _AmusementTicketsPageState createState() => _AmusementTicketsPageState();
}

class _AmusementTicketsPageState extends State<AmusementTicketsPage> {

  late AmusementTicketDatasource datasource;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    datasource = AmusementTicketDatasource(AuthRepository());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vé vui chơi'),
        centerTitle: false,
        backgroundColor: Color(0xffd10000),
      ),
      body: Container(
        color: Color(0xffe7e7e7),
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: PagingListView<WarrantyCardModel>(
          shrinkWrap: true,
          itemBuilder: (context, data, child) {
            return AmusementTicketItemWidget(data: data);
          },
          separatorBuilder: (context, indext) {
            return Container();
          },
          pageDataSource: datasource,
        ),
      ),
    );
  }
}
