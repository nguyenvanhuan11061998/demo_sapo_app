import 'package:auth_nav/bloc/auth_navigation_bloc.dart';
import 'package:demo_sapo_app/app_oauth2_interceptor.dart';
import 'package:demo_sapo_app/pages/main/product/product_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/blocs/news/blog_repository.dart';
import 'data/repository/category_repository_impl.dart';
import 'data/repository/product_repository_impl.dart';
import 'domain/local/local_service.dart';
import 'domain/repository/category_repository.dart';

class DioApp {
  final Dio dioCore;

  DioApp(this.dioCore);
}

Future initializeDependencies() async {
  Dio dioCore = Dio(BaseOptions(baseUrl: 'https://moitruongtest.mysapogo.com'));
  dioCore.interceptors.add(LogInterceptor(
      requestBody: true, responseBody: true, requestHeader: true
  ));
  DioApp dioApp = DioApp(dioCore);
  GetIt.instance.registerSingleton(dioApp);
  // dioCore.interceptors.add(AppOauth2Interceptor(dio: GetIt.instance
  //     .get<DioApp>()
  //     .dioCore,
  //     oauth2Dio: Dio(BaseOptions(baseUrl: dioCore.options.baseUrl)),
  //     pathRefreshToken: 'auth/refresh-token',
  //     tokenProvider: tokenProvider,
  //     parserJson: (json) {
  //       return AuthenticationDto.fromJson(json as Map<String, dynamic>);
  //     }));

  GetIt.instance.registerSingleton(ProductRepositoryImpl());
  GetIt.instance.registerSingleton(CategoryRepositoryImpl());
  GetIt.instance.registerSingleton(BlogRepository());
  GetIt.instance.registerSingleton(ProductBloc());

  GetIt.instance.registerSingleton(await SharedPreferences.getInstance());
  GetIt.instance.registerSingleton(LocalService());
  GetIt.instance.registerSingleton(AuthNavigationBloc());
}