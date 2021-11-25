import 'package:auth_nav/bloc/auth_navigation_bloc.dart';
import 'package:demo_sapo_app/data/repository/home_repository.dart';
import 'package:demo_sapo_app/data/repository/home_repository_imp.dart';
import 'package:demo_sapo_app/pages/main/product/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'application.dart';
import 'data/blocs/news/blog_repository.dart';
import 'data/repository/category_repository_impl.dart';
import 'data/repository/product_repository_impl.dart';
import 'domain/product_repository.dart';
import 'initialize_dependencies.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
  await initializeDependencies();

  runApp(MultiBlocProvider(
      providers: [
        BlocProvider.value(value: GetIt.instance.get<AuthNavigationBloc>()),
        // BlocProvider(create: (context) => AuthNavigationBloc()),
        BlocProvider.value(value: GetIt.instance.get<ProductBloc>()),
      ],
      child: MultiRepositoryProvider(providers: [
        RepositoryProvider<HomeRepository>(
            create: (context) => HomeRepositoryImpl()),
        RepositoryProvider<ProductRepositoryImpl>(
            create: (context) => ProductRepositoryImpl()),
        RepositoryProvider<CategoryRepositoryImpl>(
            create: (context) => CategoryRepositoryImpl()),
        RepositoryProvider<BlogRepository>(
            create: (context) => BlogRepository())
      ], child: const Application())));
}


