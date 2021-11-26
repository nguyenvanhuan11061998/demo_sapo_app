import 'package:demo_sapo_app/data/blocs/cart_bloc/cart_bloc.dart';
import 'package:demo_sapo_app/data/blocs/product/detail/product_detail_bloc.dart';
import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:demo_sapo_app/pages/main/cart/cart_page.dart';
import 'package:demo_sapo_app/pages/main/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:demo_sapo_app/data/dto/cart/cart/cart_dto.dart';
import 'package:get_it/get_it.dart';

import '../../main_page.dart';

class AppBarProductDetail extends StatelessWidget with PreferredSizeWidget {

  const AppBarProductDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: Container(
        margin: EdgeInsets.all(8),
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Color(0x4D212121)),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 24,
            color: Colors.white,
          ),
        ),
      ),
      actions: [
        InkWell(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(context, CartPage.path, ModalRoute.withName(MainPage.path));
          },
          child: IgnorePointer(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                    child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0x4D212121)),
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(Assets.icons.icCart,
                        width: 20, height: 20, color: Colors.white),
                  ),
                )),
                BlocBuilder<CartBloc, CartDto?>(
                  bloc: GetIt.instance<CartBloc>(),
                  builder: (context, data) {
                  if (data != null && data.cart.isNotEmpty && data.cart.length > 0) {
                    return Positioned(
                        top: 5,
                        right: 5,
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration:
                          BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                          child: Text('${data.cart.length}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: Colors.white, fontSize: 15)),
                        ));
                  } else {
                    return Container();
                  }
                },

                )
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.all(8),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0x4D212121)),
          // PopupMenuButton: button khi click sẽ show một popup có nhiều option lựa chọn
          child: PopupMenuButton(
            child: SvgPicture.asset(Assets.icons.icMore, color: Colors.white,),
            onSelected: (OptionMenuItem result) {
              switch (result) {
                case OptionMenuItem.backHome:
                  // điều hướng đến một màn hình và remove tất cả các router khỏi router hiện tại ngoại trừ ModalRoute.withName truyền vào
                  Navigator.pushNamedAndRemoveUntil(context, HomePage.path, ModalRoute.withName(MainPage.path));
                  break;
                case OptionMenuItem.search:
                  break;
                case OptionMenuItem.myAccount:
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<OptionMenuItem>(
                    value: OptionMenuItem.backHome,
                    child: Text(
                      'Về trang chủ', style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 14),
                )),
                PopupMenuItem(
                    value: OptionMenuItem.search,
                    child: Text(
                  'Tìm kiếm',
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 14),
                )),
                PopupMenuItem(
                    value: OptionMenuItem.myAccount,
                    child: Text(
                      'Tìm kiếm',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 14),
                    )),
              ];
            },
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

enum OptionMenuItem {
  backHome,
  search,
  myAccount
}
