import 'package:demo_sapo_app/data/blocs/cart_bloc/cart_bloc.dart';
import 'package:demo_sapo_app/pages/main/cart/address_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:demo_sapo_app/data/dto/cart/cart/cart_dto.dart';

import 'cart_page_bottom.dart';
import 'list_product_cart_widget.dart';

class CartPage extends StatefulWidget {
  static const String path = 'CartPage';

  @override
  CartPageState createState() {
    return CartPageState();
  }
}

class CartPageState extends State<CartPage> {
  late CartBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = GetIt.instance<CartBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Giỏ hàng'),
        backgroundColor: Color(0xffd10000),
        centerTitle: false,
      ),
      body: BlocBuilder<CartBloc, CartDto?>(
          bloc: _bloc,
          builder: (context, snap) {
            if (snap != null && snap.cart.isNotEmpty && snap.cart.length > 0) {
              return Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddressWidget(),
                    ListProductCartWidget(cart: snap.cart, onDelete: (idCartItem) {
                      _bloc.deleteCartItem(idCartItem);
                    },),
                    CartPageBottom(totalPrice:  snap.totalPrice),
                  ],
                ),
              );
            } else {
              return Center(
                child: Text('Giỏ hàng chưa có sản phẩm nào',
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.black, fontSize: 15)),
              );
            }
          }),
    );
  }
}


