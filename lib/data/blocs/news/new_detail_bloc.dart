



import 'dart:async';

import 'package:intl/intl.dart';

class NewDetailBloc {
  bool isLike = false;
  DateFormat _formatter = DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
  DateFormat _formatter2 = DateFormat('dd/MM/yyyy');
  String time = '';

  StreamController likeStreamController = StreamController();

  void changeLike() {
    isLike = !isLike;
    likeStreamController.sink.add(isLike);
  }

  void formatTime(String timeFormat) {
    time = _formatter2.format(_formatter.parse(timeFormat));
  }

}