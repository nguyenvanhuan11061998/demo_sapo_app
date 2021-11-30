
import 'package:demo_sapo_app/data/blocs/cart_bloc/cart_bloc.dart';
import 'package:demo_sapo_app/domain/model/blogs/article_model.dart';
import 'package:demo_sapo_app/pages/main/cart/cart_page.dart';
import 'package:demo_sapo_app/pages/main/home/home_page.dart';
import 'package:demo_sapo_app/pages/main/main_page.dart';
import 'package:demo_sapo_app/pages/main/news/new_detail_page.dart';
import 'package:demo_sapo_app/pages/main/product/product_detail/product_detail_page.dart';
import 'package:demo_sapo_app/pages/main/profile/loyalty_history/loyalty_history_page.dart';
import 'package:demo_sapo_app/utils/navigator_support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({Key? key}) : super(key: key);

  @override
  MainNavigatorState createState() => MainNavigatorState();

}

class MainNavigatorState extends State<MainNavigator>{

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          final cubit = CartBloc();
          if (GetIt.instance.isRegistered<CartBloc>()) {
            GetIt.instance.unregister<CartBloc>();
          }
          GetIt.instance.registerSingleton(cubit);
          return cubit;
        }),
      ],
      child: NavigatorSupport(
        initialRoute: MainPage.path,
        onGenerateRoute: (setting) {
          switch (setting.name) {
            case MainPage.path:
              return MaterialPageRoute(builder: (context) => MainPage(initialPage: 0));
            case ProductDetailPage.path:
              return MaterialPageRoute(builder: (context) => ProductDetailPage(
                productId: setting.arguments as int,
              ));
            case HomePage.path:
              return MaterialPageRoute(builder: (context) => MainPage(initialPage: 0));
            case CartPage.path:
              return MaterialPageRoute(builder: (context) => MainPage(initialPage: 2));
            case NewDetailPage.path:
              return MaterialPageRoute(builder: (context) => NewDetailPage(articleModel: setting.arguments as ArticleModel));
            case LoyaltyHistoryPage.path:
              return MaterialPageRoute(builder: (context) => LoyaltyHistoryPage());
          }
        },
      ),
    );
  }
}