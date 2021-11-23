import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo_sapo_app/data/blocs/product/detail/product_detail_bloc.dart';
import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:demo_sapo_app/widgets/design_system/app_button_border_widget.dart';
import 'package:demo_sapo_app/widgets/product_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo_sapo_app/data/blocs/product/detail/product_detail_state.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:demo_sapo_app/pages/main/product/product_state.dart';

import '../product_bloc.dart';
import 'app_bar_product_detail.dart';

class ProductDetailPage extends StatefulWidget {
  static const String path = "ProductDetailPage";
  int productId;

  ProductDetailPage({required this.productId, Key? key}) : super(key: key);

  @override
  ProductDetailPageState createState() {
    return ProductDetailPageState();
  }
}

class ProductDetailPageState extends State<ProductDetailPage> {
  late ProductDetailBloc productDetailBloc;
  late ProductBloc _productBloc;
  int _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    productDetailBloc = ProductDetailBloc(widget.productId);
    _productBloc = GetIt.instance<ProductBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const AppBarProductDetail(),
      // sử dụng bloc quản lý state trong flutter
      body: BlocProvider.value(
        // bloc
        value: productDetailBloc,
        child: BlocConsumer<ProductDetailBloc, ProductDetailState>(
          // khi nào trạng thái ProductDetailState thay đổi sẽ gọi đến listener
          listener: (context, state) {
            state.maybeWhen((productModel2) {
              _productBloc.getProductOfCategory(
                  categoryIds: [productModel2.category_id ?? 0]);
            }, orElse: () {});
          },
          bloc: productDetailBloc,
          builder: (context, state) {
            return state.when(
                (productModel2) => Column(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Positioned(
                                      child: CarouselSlider(
                                        options: CarouselOptions(
                                            viewportFraction: 1,
                                            aspectRatio: 1,
                                            initialPage: _currentIndex,
                                            enableInfiniteScroll: false,
                                            autoPlay: false,
                                            reverse: false,
                                            onPageChanged: (index, reason) {
                                              setState(() {
                                                _currentIndex = index;
                                              });
                                            }),
                                        items: productModel2.images
                                            ?.map((image) => Container(
                                                  child: CachedNetworkImage(
                                                    imageUrl:
                                                        image.full_path ?? '',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ))
                                            .toList(),
                                      ),
                                    ),
                                    Positioned(
                                      right: 10,
                                      bottom: 10,
                                      child: Container(
                                        child: Text(
                                          '${_currentIndex + 1}/${productModel2.images?.length}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2
                                              ?.copyWith(color: Colors.white),
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0x4D212121),
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 10),
                                      Text(productModel2.name ?? '',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(fontSize: 18)),
                                      SizedBox(height: 5),
                                      Row(
                                        children: [
                                          Text('Mã sản phẩm: ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption!
                                                  .copyWith(fontSize: 13)),
                                          Expanded(
                                              child: Text(
                                            productModel2.variants!.first.sku
                                                .toString(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption!
                                                .copyWith(
                                                    fontSize: 13,
                                                    color: Colors.blue,
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                            maxLines: 2,
                                          )),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Text('Thương Hiệu: ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption!
                                                  .copyWith(fontSize: 13)),
                                          Expanded(
                                              child: Text(
                                                  productModel2.brand ?? '',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption!
                                                      .copyWith(
                                                          fontSize: 13,
                                                          color: Colors.blue,
                                                          overflow: TextOverflow
                                                              .ellipsis),
                                                  maxLines: 2)),
                                        ],
                                      ),
                                      SizedBox(height: 22),
                                      Text(
                                          '${productModel2.variants![0].comparePrice}đ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption!
                                              .copyWith(
                                                  color: Color(0xFF878787),
                                                  decoration:
                                                      TextDecoration.underline,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold)),
                                      Text(
                                          '${productModel2.variants![0].salePrice}đ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption!
                                              .copyWith(
                                                  color: Colors.red,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15),
                                const Divider(height: 0),
                                SizedBox(height: 15),
                                Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Mô tả sản phẩm',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1!
                                                .copyWith(fontSize: 18)),
                                        SizedBox(height: 15),
                                        Html(
                                            data: productModel2.description ??
                                                ''),
                                      ],
                                    )),
                                SizedBox(height: 15),
                                const Divider(height: 0),
                                SizedBox(height: 15),
                                BlocBuilder<ProductBloc, ProductState>(
                                    builder: (context, state) {
                                  return state.when((data) {
                                    data
                                      ..removeWhere((item) =>
                                          item.id == productModel2.id);
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text('Sản phẩm liên quan',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .copyWith(fontSize: 18)),
                                        ),
                                        GridView.builder(
                                            padding: EdgeInsets.only(top: 10),
                                            // hiển thị hết các item ra màn hình
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            // tắt sự kiện vật lý scroll trên gridView
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    crossAxisSpacing: 5,
                                                    mainAxisSpacing: 5,
                                                    childAspectRatio:
                                                        (MediaQuery.of(context)
                                                                    .size
                                                                    .width -
                                                                40) /
                                                            2 /
                                                            237),
                                            itemBuilder: (context, index) {
                                              return ProductWidget(
                                                productModel2: data[index],
                                              );
                                            },
                                            itemCount: data.length),
                                      ],
                                    );
                                  }, loading: () {
                                    return Center(
                                        child: CircularProgressIndicator());
                                  }, error: (error) {
                                    return Container();
                                  });
                                })
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      Assets.icons.icShare,
                                      width: 22,
                                      height: 22,
                                      color: Colors.black,
                                    ),
                                    SizedBox(height: 8),
                                    Text('Chia sẻ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                color: Colors.black,
                                                fontSize: 14))
                                  ],
                                ),
                              ),
                              Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: AppButtonBoderWidget(
                                title: 'Chọn mua',
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                onPressed: () {},
                              ),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                loading: () =>
                    const Center(child: CupertinoActivityIndicator()),
                error: (error) => Container());
          },
        ),
      ),
    );
  }
}
