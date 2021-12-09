


import 'package:demo_sapo_app/domain/model/home_config/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryProductWidget extends StatelessWidget {
  ProductModel model;
  CategoryProductWidget({required this.model, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      elevation: 3,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {

        },
        child: Container(),
      ),
    );
  }
}
