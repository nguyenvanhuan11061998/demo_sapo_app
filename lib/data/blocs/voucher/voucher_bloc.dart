import 'package:demo_sapo_app/data/blocs/voucher/voucher_state.dart';
import 'package:demo_sapo_app/data/repository/product_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';

class VoucherBloc extends Cubit<VoucherState> {
  ProductRepositoryImpl repositoryImpl = GetIt.instance.get();
  final DateFormat formater = DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");

  VoucherBloc() : super(const VoucherState.loading());

  void init() {
    repositoryImpl.getVoucher().then((value) {
      emit(VoucherState(value));
    });
  }

  String getDate (String? date) {
    if (date == null) {
      return 'Vô thời hạn';
    } else {
      return DateFormat('dd/MM/yyyy').format(formater.parse(date));
    }
  }
}
