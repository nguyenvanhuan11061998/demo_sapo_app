
import 'package:demo_sapo_app/data/blocs/cart_bloc/cart_bloc.dart';
import 'package:demo_sapo_app/widgets/item_cart_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:demo_sapo_app/data/dto/cart/cart/cart_item_dto.dart';

class ListProductCartWidget extends StatelessWidget {

  List<CartItemDto> cart;
  CartBloc bloc;

  ListProductCartWidget({Key? key, required this.cart, required this.bloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            itemBuilder: (context, index) {
              return ItemCartWidget(
                cartItemDto: cart[index],
                onDelete: () {
                  bloc.deleteCartItem(cart[index].id);
                },
                onIncrease: () {
                  bloc.changeItemProduct(cart[index].id, StateChangeItem.INCREASE);
                },
                onReduce: () {
                  bloc.changeItemProduct(cart[index].id, StateChangeItem.REDUCE);
                },
              );
            },
            separatorBuilder: (context, index) {
              return Container(
                  width: double.infinity,
                  height: 8,
                  color: Color(0xffe5e5e5));
            },
            itemCount: cart.length));
  }
}