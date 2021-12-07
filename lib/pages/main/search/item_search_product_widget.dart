import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_sapo_app/domain/model/home_config/product.dart';
import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemSearchProductWidget extends StatelessWidget {
  ProductModel productModel;

  ItemSearchProductWidget({required this.productModel, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CachedNetworkImage(
                imageUrl: productModel.images != null &&
                        productModel.images!.isNotEmpty
                    ? productModel.images![0].full_path!
                    : '',
                fit: BoxFit.cover,
                width: 100,
                height: 120,
                errorWidget: (BuildContext buildContext, url, err) =>
                    const SizedBox(
                  child: Center(
                    child: Icon(Icons.error),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(productModel.name ?? '',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 13, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('0đ',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffd10000))),
                    SvgPicture.asset(
                      Assets.icons.icCart,
                      color: const Color(0xff0a9c22),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
