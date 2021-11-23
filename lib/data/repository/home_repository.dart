

import 'package:demo_sapo_app/domain/model/home_config/home_config_model.dart';

abstract class HomeRepository {
  Future<HomeConfigModel> getHomeConfig();
}