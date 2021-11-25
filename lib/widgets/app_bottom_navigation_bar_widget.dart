import 'package:demo_sapo_app/data/blocs/cart_bloc/cart_bloc.dart';
import 'package:demo_sapo_app/data/dto/cart/cart/cart_dto.dart';
import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

import 'bottom_bar_item.dart';

class AppBottomNavigationBarWidget extends StatefulWidget {
  int indexPage;

  // ValueChanged: trả về một callback với một giá trị kèm theo
  ValueChanged<int> onChange;

  AppBottomNavigationBarWidget(
      {required this.indexPage, required this.onChange, Key? key})
      : super(key: key);

  @override
  AppBottomNavigationBarWidgetState createState() {
    return AppBottomNavigationBarWidgetState();
  }
}

class AppBottomNavigationBarWidgetState
    extends State<AppBottomNavigationBarWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0x1a000000)),
          color: Colors.white),
      height: kBottomNavigationBarHeight +
          MediaQuery
              .of(context)
              .padding
              .bottom +
          12,
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              child: BottomBarItem(
                  isSelected: widget.indexPage == 0,
                  iconPath: widget.indexPage == 0
                      ? Assets.icons.icHomeSelected
                      : Assets.icons.icHome,
                  title: 'Trang chủ'),
              onTap: () {
                if (widget.indexPage != 0) {
                  setState(() {
                    widget.onChange(0);
                  });
                }
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: BottomBarItem(
                  isSelected: widget.indexPage == 1,
                  iconPath: widget.indexPage == 1
                      ? Assets.icons.icCategorySelected
                      : Assets.icons.icCategory,
                  title: 'Danh mục'),
              onTap: () {
                if (widget.indexPage != 1) {
                  setState(() {
                    widget.onChange(1);
                  });
                }
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: StreamBuilder<CartDto?>(
                  stream: context
                      .watch<CartBloc>()
                      .stream,
                  builder: (context, snap) {
                    if (snap.hasData) {
                      return BottomBarItem(
                          isSelected: widget.indexPage == 2,
                          iconPath: widget.indexPage == 2
                              ? Assets.icons.icCartSelected
                              : Assets.icons.icCart,
                          countCart: snap.data!.cart.length,
                          title: 'Giỏ hàng');
                    } else {
                      return BottomBarItem(
                          isSelected: widget.indexPage == 2,
                          iconPath: widget.indexPage == 2
                              ? Assets.icons.icCartSelected
                              : Assets.icons.icCart,
                          countCart: context.watch<CartBloc>().state!.cart.length,
                          title: 'Giỏ hàng');
                    }
                  }
              ),
              onTap: () {
                if (widget.indexPage != 2) {
                  setState(() {
                    widget.onChange(2);
                  });
                }
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: BottomBarItem(
                  isSelected: widget.indexPage == 3,
                  iconPath: widget.indexPage == 3
                      ? Assets.icons.icNewsSelected
                      : Assets.icons.icNews,
                  title: 'Tin tức'),
              onTap: () {
                if (widget.indexPage != 3) {
                  setState(() {
                    widget.onChange(3);
                  });
                }
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: BottomBarItem(
                  isSelected: widget.indexPage == 4,
                  iconPath: widget.indexPage == 4
                      ? Assets.icons.icProfileSelected
                      : Assets.icons.icProfile,
                  title: 'Cá nhân'),
              onTap: () {
                if (widget.indexPage != 4) {
                  setState(() {
                    widget.onChange(4);
                  });
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
