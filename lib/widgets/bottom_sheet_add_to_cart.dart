import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_sapo_app/data/blocs/cart_bloc/cart_bloc.dart';
import 'package:demo_sapo_app/domain/model/home_config/product.dart';
import 'package:demo_sapo_app/utils/extensions.dart';
import 'package:demo_sapo_app/widgets/design_system/app_button_border_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class BottomOptionAddToCard extends StatefulWidget {
  ProductModel productModel;

  BottomOptionAddToCard({Key? key, required this.productModel})
      : super(key: key);

  @override
  BottomOptionAddToCardState createState() {
    return BottomOptionAddToCardState();
  }
}

class BottomOptionAddToCardState extends State<BottomOptionAddToCard> {
  int _count = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // Giới hạn kích thước column nhỏ nhất có thể, bằng kích thước các con bên trong
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 20),
            height: 120,
            child: Row(
              children: [
                CachedNetworkImage(
                    imageUrl: '${widget.productModel.images![0].full_path}',
                    width: 104,
                    height: 104,
                    fit: BoxFit.cover),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${widget.productModel.name}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(fontSize: 16, color: Colors.black),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis),
                        Spacer(),
                        Text(
                            widget.productModel.variants![0].salePrice
                                .toInt()
                                .toMoney(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.red, fontSize: 14)),
                        Text(
                            'Kho: ${widget.productModel.variants![0].available}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    color: Color(0xff757575), fontSize: 14)),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    child: Icon(Icons.close, color: Color(0xff757575)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Divider(height: 1),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Row(
              children: [
                Text('Số lượng',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.black, fontSize: 15)),
                Spacer(),
                SizedBox(
                  width: 22,
                  height: 22,
                  child: Material(
                    color: Color(0xffeaeaea),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          if (_count > 1) {
                            _count--;
                          }
                        });
                      },
                      splashColor: Color(0xffeaeaea),
                      borderRadius: BorderRadius.circular(20),
                      child: Center(
                        child: Divider(
                          color: Colors.black,
                          indent: 7,
                          endIndent: 7,
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 3),
                      child: Text('${_count}',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: Colors.black, fontSize: 14)),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffeaeaea),
                      border: Border.all(color: Color(0xffada4a4)),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Material(
                  color: Color(0xffeaeaea),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: InkWell(
                      onTap: () {
                        setState(() {
                          _count++;
                        });
                      },
                      borderRadius: BorderRadius.circular(20),
                      child: Icon(Icons.add, size: 20)),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Divider(height: 1),
          SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                    child: AppButtonBoderWidget(
                  title: 'Thêm vào giỏ',
                  backgroundColor: Colors.white,
                  borderColor: Colors.red,
                  textColor: Colors.red,
                  onPressed: () {
                    CartBloc _cartBloc = context.read<CartBloc>();
                    _cartBloc.addCartItem(1, widget.productModel, _count);
                    Navigator.pop(context);
                  },
                )),
                SizedBox(width: 20),
                Expanded(
                    child: AppButtonBoderWidget(
                  title: 'Mua ngay',
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  onPressed: () {},
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
