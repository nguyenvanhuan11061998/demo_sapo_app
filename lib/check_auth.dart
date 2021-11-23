import 'package:demo_sapo_app/domain/local/local_service.dart';
import 'package:demo_sapo_app/pages/auth/authentication_navigator.dart';
import 'package:demo_sapo_app/pages/main/main_navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class CheckAuth extends StatefulWidget {

  @override
  CheckAuthState createState() => CheckAuthState();

}

class CheckAuthState extends State<CheckAuth> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        key: navigatorKey,
        child: GetIt.instance.get<LocalService>().isAuthorized()
            ? MainNavigator()
            : AuthenticationNavigator(),
        onWillPop: () async {
          return !(await navigatorKey.currentState!.maybePop());
        });
  }
}