

import 'package:demo_sapo_app/pages/main/cart/cart_page.dart';
import 'package:demo_sapo_app/pages/main/category/category_page.dart';
import 'package:demo_sapo_app/pages/main/home/home_page.dart';
import 'package:demo_sapo_app/pages/main/news/new_page.dart';
import 'package:demo_sapo_app/pages/main/profile/profile_page.dart';
import 'package:demo_sapo_app/widgets/app_bottom_navigation_bar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {

  static const String path = 'MainPage';

  int initialPage;

  MainPage({required this.initialPage,Key? key}) : super(key: key);

  @override
  MainPageState createState() {
    return MainPageState();
  }

}

class MainPageState extends State<MainPage>{
  late int _pageIndex;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageIndex = widget.initialPage;
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SafeArea(
       top: false,
       child: PageView(
         controller: _pageController,
         onPageChanged: (index) {
           setState(() {
             _pageIndex = index;
           });
         },
         physics: const NeverScrollableScrollPhysics(),
         children: [
           HomePage(),
           CategoryPage(),
           CartPage(),
           NewsPage(),
           ProfilePage()
         ],
       ),
     ),
     bottomNavigationBar: AppBottomNavigationBarWidget(indexPage: _pageIndex, onChange: (index) {
       setState(() {
         _pageController.jumpToPage(index);
       });
     }),
   );
  }
}