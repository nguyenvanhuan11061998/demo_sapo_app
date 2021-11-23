import 'package:auth_nav/auth_nav.dart';
import 'package:demo_sapo_app/check_auth.dart';
import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:demo_sapo_app/pages/auth/authentication_navigator.dart';
import 'package:demo_sapo_app/pages/auth/sign_in_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSplashPage extends StatefulWidget{
  const AppSplashPage({Key? key}) : super(key: key);

  @override
  AppSplashPageState createState() => AppSplashPageState();
}

class AppSplashPageState extends State<AppSplashPage> {
  @override
  Widget build(BuildContext context) {
    linkScreen();
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: const Color(0xffd10000),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.icons.icLogo),
            const SizedBox(height: 30),
            Text('Nhà sách Tân Việt', style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),),
            const SizedBox(height: 10,),
            Text('Nâng tầm tri thức Việt!', style: Theme.of(context).textTheme.bodyText1?.copyWith(fontStyle: FontStyle.italic, color: Colors.white)),
          ],
        ),
      ),
    );
  }

  void linkScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).push(CupertinoPageRoute(builder: (context) => CheckAuth()));
    });
  }
}
