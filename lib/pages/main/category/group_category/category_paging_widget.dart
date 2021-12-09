

import 'package:demo_sapo_app/domain/model/home_config/product.dart';

import 'package:flutter/cupertino.dart';
import 'package:fl_paging/fl_paging.dart' as paging;

import 'category_paging_data_source.dart';
import 'category_product_widget.dart';

class CategoryPagingWidget extends StatefulWidget {
  int categoryId;

  CategoryPagingWidget({required this.categoryId, Key? key}) : super(key: key);

  @override
  _CategoryPagingWidgetState createState() => _CategoryPagingWidgetState();
}

class _CategoryPagingWidgetState extends State<CategoryPagingWidget> {

  late CategoryPagingDataSource dataSource;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataSource = CategoryPagingDataSource(widget.categoryId);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffe7e7e7),
      padding: const EdgeInsets.all(16),
      child: paging.PagingGridView<ProductModel> (
        delegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          childAspectRatio: 6/8,
          crossAxisSpacing: 10
        ),
        itemBuilder: (context, data, child) {
          return CategoryProductWidget(model: data);
        },
        pageDataSource: dataSource,
      ),
    );
  }
}
