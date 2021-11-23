import 'package:demo_sapo_app/domain/model/category_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'category_sub_item_widget.dart';

class CategoryItemWidget extends StatefulWidget {
  CategoryModel categoryModel;

  CategoryItemWidget({required this.categoryModel, Key? key}) : super(key: key);

  @override
  CategoryItemWidgetState createState() {
    return CategoryItemWidgetState();
  }
}

class CategoryItemWidgetState extends State<CategoryItemWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        // widget cho phép khả năng mở rộng, thêm widget con cũng như ẩn đi widget con
        child: ExpansionTile(
          // trailing: thêm widget phía bên phải
          trailing: const Icon(Icons.arrow_forward_ios),
          iconColor: Color(0xff212121),
          initiallyExpanded: false,
          title: Text(widget.categoryModel.name ?? "",
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(fontWeight: FontWeight.w600)),
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SizedBox(
                    height: 180,
                    child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: widget.categoryModel.categories?.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 8,
                            childAspectRatio: 1),
                        itemBuilder: (context, index) {
                          return CategorySubItemWidget(
                              title:
                                  widget.categoryModel.categories?[index].name ??
                                      "",
                              onPress: () {});
                        }),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
