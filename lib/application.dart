import 'package:demo_sapo_app/pages/slpash/app_splash_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  ApplicationState createState() => ApplicationState();
}

class ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: () {
            return AppSplashPage();
          }),
    );
  }
}
