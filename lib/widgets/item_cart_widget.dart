import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_sapo_app/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demo_sapo_app/data/dto/cart/cart/cart_item_dto.dart';

class ItemCartWidget extends StatefulWidget {
  CartItemDto cartItemDto;
  VoidCallback onDelete;

  ItemCartWidget({required this.cartItemDto, required this.onDelete, Key? key}) : super(key: key);

  @override
  ItemCartWidgetState createState() {
    return ItemCartWidgetState();
  }
}

class ItemCartWidgetState extends State<ItemCartWidget> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Checkbox(
                // border + màu check box
                side: BorderSide(
                  width: 1,
                  color: Color(0xffd10000),
                ),
                activeColor: Color(0xffd10000),
                // hình dạng check box
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3)),
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value ?? true;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: CachedNetworkImage(
                imageUrl:
                    widget.cartItemDto.image,
                fit: BoxFit.cover),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                // crossAxisAlignment: xác dịnh vị trí của các phần tử con theo chiều ngang
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: xác định vị trí  các phần tử con theo chiều dọc
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.cartItemDto.product.name ?? '',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 5),
                  Text('${widget.cartItemDto.getSumPrice.toInt().toMoney() ?? 0}đ',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Material(
                          color: Color(0xffe7e7e7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: InkWell(
                            focusColor: Color(0xffbababa),
                            child: Center(
                              child: Divider(
                                color: Colors.black,
                                height: 1,
                                endIndent: 7,
                                indent: 7,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffe3e3e3),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 3),
                          child: Text(
                            '${widget.cartItemDto.count}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Material(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffe3e3e3),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: InkWell(
                              child: Icon(
                            Icons.add,
                            size: 20,
                          )),
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          widget.onDelete();
                        },
                        child: Text('Xóa',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(fontSize: 12, color: Colors.blue)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
