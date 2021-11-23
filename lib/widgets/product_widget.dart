import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_sapo_app/domain/model/home_config/product.dart';
import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:demo_sapo_app/pages/main/product/product_detail/product_detail_page.dart';
import 'package:demo_sapo_app/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductWidget extends StatelessWidget {
  ProductModel productModel;

  ProductWidget({required this.productModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Container(
        width: 142,
        height: 243,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, ProductDetailPage.path, arguments: productModel.id);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CachedNetworkImage(
                  height: 120,
                  fit: BoxFit.cover,
                  imageUrl: productModel.images != null &&
                          productModel.images!.isNotEmpty
                      ? productModel.images![0].full_path ?? ''
                      : '',
                  placeholder: (BuildContext context, url) {
                    return const Center(child: CupertinoActivityIndicator());
                  },
                  errorWidget: (BuildContext context, url, err) {
                    return Center(child: Icon(Icons.error));
                  },
                ),
                SizedBox(height: 10),
                Text(productModel.name ?? "",
                    style: Theme.of(context).textTheme.caption?.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis),
                Spacer(),
                productModel.variants![0].comparePrice !=
                        productModel.variants![0].salePrice
                    ? Text(
                        (productModel.variants![0].comparePrice ?? 0)!
                                .toInt()
                                .toMoney() +
                            'đ',
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Color(0xff757575),
                            decoration: TextDecoration.lineThrough),
                      )
                    : Text(
                        '0đ',
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Color(0xff757575),
                            decoration: TextDecoration.lineThrough),
                      ),
                Row(
                  children: [
                    Text(
                      (productModel.variants?[0].variant_prices?[0].value
                                  ?.toInt()
                                  .toMoney() ??
                              "0") +
                          'đ',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: Color(0xffd10000), fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    SvgPicture.asset(Assets.icons.icCart,
                        color: Color(0xff0a9c22))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
