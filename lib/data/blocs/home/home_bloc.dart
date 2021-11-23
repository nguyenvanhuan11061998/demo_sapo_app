

import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeBloc extends Cubit<HomeState> {

  HomeBloc() : super(const HomeState.loading()) {
    fetchData();
  }

  Future fetchData() async {
    emit(HomeState([]));
  }
}