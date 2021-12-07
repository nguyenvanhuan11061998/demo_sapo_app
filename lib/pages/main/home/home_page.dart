import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo_sapo_app/data/blocs/home/home_bloc.dart';
import 'package:demo_sapo_app/data/blocs/home/home_state.dart';
import 'package:demo_sapo_app/data/dto/home_config/home_config_dto.dart';
import 'package:demo_sapo_app/data/repository/home_repository.dart';
import 'package:demo_sapo_app/data/repository/product_repository_impl.dart';
import 'package:demo_sapo_app/domain/model/home_config/home_config_model.dart';
import 'package:demo_sapo_app/domain/model/home_config/product.dart';
import 'package:demo_sapo_app/domain/voucher_model.dart';
import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:demo_sapo_app/pages/main/search/search_page.dart';
import 'package:demo_sapo_app/widgets/menuitemwidget.dart';
import 'package:demo_sapo_app/widgets/product_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  static const String path = 'HomePage';

  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  late Future<List<VoucherModel>> vouchersFuture;
  late HomeBloc _bloc;
  HomeConfigModel homeConfigModel = HomeConfigDto([], [], []);
  var itemSlide = [];

  int index = 0;
  StreamController _streamController = StreamController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bloc = HomeBloc();
    vouchersFuture = ProductRepositoryImpl().getVoucher();
    context.read<HomeRepository>().getHomeConfig().then((value) {
      setState(() {
        homeConfigModel = value;
        homeConfigModel.banners!.forEach((element) {
          itemSlide.add(element.image);
        });
      });
    });
    _streamController.sink.add(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffD10000),
        title: InkWell(
          onTap: () {
            Navigator.pushNamed(context, SearchPage.path);
          },
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.white, width: 1),
                color: const Color(0xffb00000)),
            child: Row(
              children: [
                SvgPicture.asset(Assets.icons.icSearch,
                    width: 16, height: 16, color: Colors.white),
                SizedBox(width: 10),
                Text('Tìm kiếm',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        ?.copyWith(color: Colors.white))
              ],
            ),
          ),
        ),
        centerTitle: false,
        actions: [
          InkWell(
              child: SvgPicture.asset(Assets.icons.icNotification,
                  width: 24, height: 24)),
          SizedBox(width: 14)
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
              child: BlocProvider.value(
                  value: _bloc,
                  child: BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      return state.when(
                          (products) => SingleChildScrollView(
                                child: Column(
                                  children: [
                                    const SizedBox(height: 68),
                                    SizedBox(
                                      height: 172,
                                      child: GridView.builder(
                                        // scrollDirection : đặt view scroll theo chiều ngang => tạo một gridView theo chiều ngang
                                        scrollDirection: Axis.horizontal,
                                        //đặt kích thước GridView bằng khoảng không gian hiện có các phần tử con
                                        shrinkWrap: true,
                                        padding: const EdgeInsets.only(),
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                // crossAxisCount : Số cross hiển thị => gridView có hai hàng hiển thị item
                                                crossAxisCount: 2,
                                                // khoảng cách giữa các cross axis (ở đây là khoảng các giữa các hàng)
                                                crossAxisSpacing: 10,
                                                // khoảng rộng xung quanh một item con theo chiều grid (ở đây là khoảng rộng hai bên trái phải một item)
                                                mainAxisExtent:
                                                    (MediaQuery.of(context)
                                                                .size
                                                                .width -
                                                            16) /
                                                        4.4,
                                                // tỉ lệ chiều ngang, chiều dọc một item
                                                childAspectRatio: 6 / 8,
                                                // mainAxisSpacing : Khoảng cách giữa các item (ở đây là grid view ngang nên là khoảng cách giữa các item trong một hàng)
                                                mainAxisSpacing: 8),
                                        itemBuilder: (context, index) {
                                          return MenuItemWidget(
                                              model: homeConfigModel
                                                  .topCategory![index]);
                                        },
                                        itemCount:
                                            homeConfigModel.topCategory!.length,
                                      ),
                                    ),
                                    const SizedBox(height: 24),
                                    Container(
                                      width: double.infinity,
                                      child: StreamBuilder(
                                        stream: _streamController.stream,
                                        builder: (context, snap) {
                                          if (snap.hasData) {
                                            return Stack(
                                              children: [
                                                // xây dựng một slide băng chuyền trong flutter
                                                CarouselSlider(
                                                    // truyền vào một list danh sách widget các con
                                                    items: itemSlide
                                                        .map((urlImage) =>
                                                            Padding(
                                                                padding: const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        10),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                  // CachedNetworkImage : lấy ảnh và giữ chúng trong cache
                                                                  child:
                                                                      CachedNetworkImage(
                                                                    imageUrl:
                                                                        urlImage,
                                                                    //BoxFit.cover : kích thước ảnh nhỏ nhất có thể trong khi vẫn phủ hết kích thước CachedNetworkImage
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    width: 350,
                                                                  ),
                                                                )))
                                                        .toList(),
                                                    options: CarouselOptions(
                                                        // tỉ lệ khung ảnh so với phần rỗng bên ngoài, = 1: các khung ảnh hiển thị b thường, = 2: giữa hai khung ảnh item xuất hiện một khoảng trống bằng khung ảnh, = 3: ......
                                                        viewportFraction: 1,
                                                        initialPage: index,
                                                        // tỉ lệ chiều ngang/ chiều dọc của khung ảnh nếu ảnh không được hiển thị
                                                        aspectRatio: 2.5,
                                                        // enableInfiniteScroll = true => băng chuyền sẽ lặp vô hạn, false: băng chuyền sẽ lặp giới hạn bằng số lượng item
                                                        enableInfiniteScroll:
                                                            true,
                                                        // reverse: đảo ngược chiều scroll item hiển thị, bằng true sẽ đảo ngược, false thì sẽ hiện item tiếp theo bên phải
                                                        reverse: false,
                                                        //autoPlay : tự động scroll item trong một khoảng thời gian
                                                        autoPlay: true,
                                                        //autoPlayInterval khoảng time scroll item kế tiếp
                                                        autoPlayInterval:
                                                            const Duration(
                                                                seconds: 5),
                                                        // autoPlayAnimationDuration: thêm animation hiệu ứng chuyển item, khoảng thời gian hiệu ứng chuyển item
                                                        autoPlayAnimationDuration:
                                                            const Duration(
                                                                milliseconds:
                                                                    2500),
                                                        onPageChanged:
                                                            (index, reason) {
                                                          _streamController.sink
                                                              .add(index);
                                                        })),
                                                Positioned.fill(
                                                    bottom: 8,
                                                    right: 0,
                                                    left: 0,
                                                    child: Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Container(
                                                          height: 1,
                                                          child: Center(
                                                            child: ListView
                                                                .builder(
                                                                    itemBuilder:
                                                                        (context,
                                                                            index) {
                                                                      return Container(
                                                                        width:
                                                                            16,
                                                                        height:
                                                                            1,
                                                                        margin: const EdgeInsets.symmetric(
                                                                            horizontal:
                                                                                2),
                                                                        color: snap.data ==
                                                                                index
                                                                            ? Color(0xffb00000)
                                                                            : Color(0xffc2c2c2),
                                                                      );
                                                                    },
                                                                    itemCount:
                                                                        itemSlide
                                                                            .length,
                                                                    scrollDirection:
                                                                        Axis
                                                                            .horizontal,
                                                                    shrinkWrap:
                                                                        true,
                                                                    physics:
                                                                        NeverScrollableScrollPhysics()),
                                                          ),
                                                        ))),
                                              ],
                                            );
                                          } else {
                                            return Container();
                                          }
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Column(
                                        children: homeConfigModel
                                            .categoriesGroup!
                                            .map((e) {
                                          return FutureBuilder<
                                                  List<ProductModel>>(
                                              future: context
                                                  .read<ProductRepositoryImpl>()
                                                  .searchProduct(
                                                      categoryIds:
                                                          e.categoryIds),
                                              builder: (context, snap) {
                                                if (snap.hasData &&
                                                    snap.requireData
                                                        .isNotEmpty) {
                                                  return Container(
                                                    width: double.infinity,
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(height: 10),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      20),
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                  e.title ?? "",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline6
                                                                      ?.copyWith(
                                                                          fontSize:
                                                                              18)),
                                                              Spacer(),
                                                              InkWell(
                                                                child: Text(
                                                                    'Xem thêm',
                                                                    style: Theme.of(
                                                                            context)
                                                                        .textTheme
                                                                        .caption
                                                                        ?.copyWith(
                                                                            fontSize:
                                                                                15,
                                                                            color:
                                                                                Colors.blue)),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(height: 5),
                                                        SizedBox(
                                                          height: 234,
                                                          child: ListView
                                                              .separated(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              16),
                                                                  scrollDirection:
                                                                      Axis
                                                                          .horizontal,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    return ProductWidget(
                                                                        productModel:
                                                                            snap.data![index]);
                                                                  },
                                                                  separatorBuilder:
                                                                      (context,
                                                                          index) {
                                                                    return Container();
                                                                  },
                                                                  itemCount: snap
                                                                      .data!
                                                                      .length),
                                                        )
                                                      ],
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              });
                                        }).toList(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          loading: () => const Center(
                                  child: Center(
                                child: CupertinoActivityIndicator(),
                              )),
                          error: (error) => Container());
                    },
                  ))),

          // Positioned: được sử dụng để định vị một vị trí của widget con trong stack
          // Positioned.fill : tạo một đối tượng object vói cái vị trí left, right, top, bottom
          Positioned.fill(
              // Align : một widget dùng để chứa các widget con, và cung cấp các tham số để căn chỉnh vị trí của các widget con.
              child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 44,
              decoration: BoxDecoration(
                  color: Color(0xffD10000),
                  //BorderRadius.vertical : tạo một bán kính viền đối xứng theo chiều dọc
                  borderRadius: BorderRadius.vertical(
                      //Radius.elliptical: dựng một elip với bán kính truyền vào
                      bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width, 50))),
            ),
          )),

          Positioned.fill(
              top: 8,
              // Card : như cardView trong android, dùng để đổ bóng, tạo view hình chữ nhật, bo tròn góc, ...
              child: Align(
                alignment: Alignment.topCenter,
                child: Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        SvgPicture.asset(Assets.icons.icScan),
                        const SizedBox(width: 12),
                        SvgPicture.asset(Assets.icons.icDivider),
                        InkWell(
                          child: Row(
                            children: [
                              SizedBox(width: 10),
                              SvgPicture.asset(Assets.icons.icDolar,
                                  width: 16, height: 16),
                              SizedBox(width: 5),
                              Text('445 điểm',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      ?.copyWith(fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                        const Spacer(),
                        SvgPicture.asset(Assets.icons.icDivider),

                        //FutureBuilder : nhận vào một hàm bất đồng bộ, hiển thị các
                        // widget con bên trong theo các trạng thái data trả về của hàm đó,
                        // là một widget tự động cập nhật data và render lên màn hình.
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: FutureBuilder<List<VoucherModel>>(
                              future: vouchersFuture,
                              builder: (context, snap) {
                                if (snap.hasData) {
                                  return InkWell(
                                    child: Text(
                                        '${snap.data!.length} mã giảm giá',
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            ?.copyWith(
                                                color: Color(0xff004fc4))),
                                  );
                                } else {
                                  return Text('0 mã giảm giá',
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption
                                          ?.copyWith(
                                              color: const Color(0xff004fc4)));
                                }
                              }),
                        ),
                        const SizedBox(width: 5),
                        SvgPicture.asset(Assets.icons.icVoucher,
                            width: 16, height: 10),
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
