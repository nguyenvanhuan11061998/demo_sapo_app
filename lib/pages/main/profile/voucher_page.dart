import 'package:demo_sapo_app/data/blocs/voucher/voucher_bloc.dart';
import 'package:demo_sapo_app/data/blocs/voucher/voucher_state.dart';
import 'package:demo_sapo_app/pages/main/profile/voucher/item_voucher_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class VoucherPage extends StatefulWidget {
  static const String path = 'VoucherPage';

  const VoucherPage({Key? key}) : super(key: key);

  @override
  _VoucherPageState createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {
  late VoucherBloc _bloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bloc = GetIt.instance.get();
    _bloc.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mã ưu đãi'),
        centerTitle: false,
        backgroundColor: Color(0xffd10000),
      ),
      body: BlocProvider.value(
        value: _bloc,
        child: BlocBuilder<VoucherBloc, VoucherState>(
          builder: (context, state) {
            return state.when(
                (listData) => Container(
                  color: Color(0xffeaeaea),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: ListView.separated(
                        shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ItemVoucherWidget(
                              voucherModel: listData[index]
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 10);
                          },
                          itemCount: listData.length),
                    ),
                loading: () => Center(child: const CircularProgressIndicator()),
                error: (error) => Center(child: Text(error)));
          },
        ),
      ),
    );
  }
}
