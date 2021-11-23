

import 'package:intl/intl.dart';

extension Money on int {
  String toMoney() {
    NumberFormat format = NumberFormat.currency(locale: 'vi-VN', symbol: '');
    String result = format.format(this);
    return result;
  }
}