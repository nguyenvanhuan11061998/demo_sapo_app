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
                Text('T??m ki???m',
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
                                        // scrollDirection : ?????t view scroll theo chi???u ngang => t???o m???t gridView theo chi???u ngang
                                        scrollDirection: Axis.horizontal,
                                        //?????t k??ch th?????c GridView b???ng kho???ng kh??ng gian hi???n c?? c??c ph???n t??? con
                                        shrinkWrap: true,
                                        padding: const EdgeInsets.only(),
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                // crossAxisCount : S??? cross hi???n th??? => gridView c?? hai h??ng hi???n th??? item
                                                crossAxisCount: 2,
                                                // kho???ng c??ch gi???a c??c cross axis (??? ????y l?? kho???ng c??c gi???a c??c h??ng)
                                                crossAxisSpacing: 10,
                                                // kho???ng r???ng xung quanh m???t item con theo chi???u grid (??? ????y l?? kho???ng r???ng hai b??n tr??i ph???i m???t item)
                                                mainAxisExtent:
                                                    (MediaQuery.of(context)
                                                                .size
                                                                .width -
                                                            16) /
                                                        4.4,
                                                // t??? l??? chi???u ngang, chi???u d???c m???t item
                                                childAspectRatio: 6 / 8,
                                                // mainAxisSpacing : Kho???ng c??ch gi???a c??c item (??? ????y l?? grid view ngang n??n l?? kho???ng c??ch gi???a c??c item trong m???t h??ng)
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
                                                // x??y d???ng m???t slide b??ng chuy???n trong flutter
                                                CarouselSlider(
                                                    // truy???n v??o m???t list danh s??ch widget c??c con
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
                                                                  // CachedNetworkImage : l???y ???nh v?? gi??? ch??ng trong cache
                                                                  child:
                                                                      CachedNetworkImage(
                                                                    imageUrl:
                                                                        urlImage,
                                                                    //BoxFit.cover : k??ch th?????c ???nh nh??? nh???t c?? th??? trong khi v???n ph??? h???t k??ch th?????c CachedNetworkImage
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    width: 350,
                                                                  ),
                                                                )))
                                                        .toList(),
                                                    options: CarouselOptions(
                                                        // t??? l??? khung ???nh so v???i ph???n r???ng b??n ngo??i, = 1: c??c khung ???nh hi???n th??? b th?????ng, = 2: gi???a hai khung ???nh item xu???t hi???n m???t kho???ng tr???ng b???ng khung ???nh, = 3: ......
                                                        viewportFraction: 1,
                                                        initialPage: index,
                                                        // t??? l??? chi???u ngang/ chi???u d???c c???a khung ???nh n???u ???nh kh??ng ???????c hi???n th???
                                                        aspectRatio: 2.5,
                                                        // enableInfiniteScroll = true => b??ng chuy???n s??? l???p v?? h???n, false: b??ng chuy???n s??? l???p gi???i h???n b???ng s??? l?????ng item
                                                        enableInfiniteScroll:
                                                            true,
                                                        // reverse: ?????o ng?????c chi???u scroll item hi???n th???, b???ng true s??? ?????o ng?????c, false th?? s??? hi???n item ti???p theo b??n ph???i
                                                        reverse: false,
                                                        //autoPlay : t??? ?????ng scroll item trong m???t kho???ng th???i gian
                                                        autoPlay: true,
                                                        //autoPlayInterval kho???ng time scroll item k??? ti???p
                                                        autoPlayInterval:
                                                            const Duration(
                                                                seconds: 5),
                                                        // autoPlayAnimationDuration: th??m animation hi???u ???ng chuy???n item, kho???ng th???i gian hi???u ???ng chuy???n item
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
                                                                    'Xem th??m',
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

          // Positioned: ???????c s??? d???ng ????? ?????nh v??? m???t v??? tr?? c???a widget con trong stack
          // Positioned.fill : t???o m???t ?????i t?????ng object v??i c??i v??? tr?? left, right, top, bottom
          Positioned.fill(
              // Align : m???t widget d??ng ????? ch???a c??c widget con, v?? cung c???p c??c tham s??? ????? c??n ch???nh v??? tr?? c???a c??c widget con.
              child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 44,
              decoration: BoxDecoration(
                  color: Color(0xffD10000),
                  //BorderRadius.vertical : t???o m???t b??n k??nh vi???n ?????i x???ng theo chi???u d???c
                  borderRadius: BorderRadius.vertical(
                      //Radius.elliptical: d???ng m???t elip v???i b??n k??nh truy???n v??o
                      bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width, 50))),
            ),
          )),

          Positioned.fill(
              top: 8,
              // Card : nh?? cardView trong android, d??ng ????? ????? b??ng, t???o view h??nh ch??? nh???t, bo tr??n g??c, ...
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
                              Text('445 ??i???m',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      ?.copyWith(fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                        const Spacer(),
                        SvgPicture.asset(Assets.icons.icDivider),

                        //FutureBuilder : nh???n v??o m???t h??m b???t ?????ng b???, hi???n th??? c??c
                        // widget con b??n trong theo c??c tr???ng th??i data tr??? v??? c???a h??m ????,
                        // l?? m???t widget t??? ?????ng c???p nh???t data v?? render l??n m??n h??nh.
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: FutureBuilder<List<VoucherModel>>(
                              future: vouchersFuture,
                              builder: (context, snap) {
                                if (snap.hasData) {
                                  return InkWell(
                                    child: Text(
                                        '${snap.data!.length} m?? gi???m gi??',
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            ?.copyWith(
                                                color: Color(0xff004fc4))),
                                  );
                                } else {
                                  return Text('0 m?? gi???m gi??',
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
