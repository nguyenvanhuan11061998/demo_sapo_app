import 'package:demo_sapo_app/pages/auth/forgot_password.dart';
import 'package:demo_sapo_app/pages/auth/sign_in_page.dart';
import 'package:demo_sapo_app/pages/auth/sign_up_page.dart';
import 'package:demo_sapo_app/utils/navigator_support.dart';
import 'package:flutter/cupertino.dart';

import 'otp_page.dart';

class AuthenticationNavigator extends StatefulWidget {
  const AuthenticationNavigator({Key? key}) : super(key: key);

  @override
  AuthenticationNavigatorState createState() => AuthenticationNavigatorState();

}

class AuthenticationNavigatorState extends State<AuthenticationNavigator> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // FocusScope: đối tượng xác định focus vào textField tiếp theo (unfocus: tắt chế độ này)
        FocusScope.of(context).unfocus();
      },
      child: NavigatorSupport(
        initialRoute: SignInPage.path,
        onGenerateRoute: (setting) {
          switch (setting.name) {
            case SignInPage.path:
              return CupertinoPageRoute(builder: (context) => const SignInPage());
            case ForgotPassword.path:
              return CupertinoPageRoute(builder: (context) => const ForgotPassword());
            case OtpPage.path:
              dynamic otpParam = setting.arguments as Map;
              return CupertinoPageRoute(builder: (context) => OtpPage(
                  numPhone: otpParam['numPhone'],
              ));
            case SignUpPage.path:
              return CupertinoPageRoute(builder: (context) => const SignUpPage());
          }
        },
      ),
    );
  }
}