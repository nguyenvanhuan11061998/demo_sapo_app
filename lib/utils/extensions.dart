

import 'package:intl/intl.dart';

extension Money on int {
  String toMoney() {
    NumberFormat format = NumberFormat.currency(locale: 'vi-VN', symbol: '');
    String result = format.format(this);
    return result;
  }
}

extension DateTimeFormat on String {
  String formatDDMMYYYY() {
    final DateFormat format = DateFormat('dd/MM/yyyy');
    return format.format(DateTime.parse(this).toLocal());
  }
}