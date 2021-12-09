import 'package:demo_sapo_app/domain/model/home_config/top_category_model.dart';
import 'package:demo_sapo_app/pages/main/category/group_category/group_category_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuItemWidget extends StatefulWidget {
  TopCategoryModel model;

  MenuItemWidget({required this.model, Key? key}) : super(key: key);

  @override
  MenuItemWidgetState createState() => MenuItemWidgetState();
}

class MenuItemWidgetState extends State<MenuItemWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 80,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, GroupCategoryPage.path, arguments: widget.model);
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              //Image.network : load image online from url
              child: Image.network(widget.model.icon ?? '',
                  // loadingBuilder: Trạng thái loading của image
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    // hiển thị trạng thái loading
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                    color: const Color(0xffD10000),
                  ),
                );
              },
                  // trạng thái load image lỗi
                  errorBuilder: (BuildContext context, Object error,
                      StackTrace? loadingProgress) {
                return const Icon(Icons.account_circle_outlined, size: 28);
              }, width: 44, height: 44),
            ),
            const SizedBox(height: 5),
            Text(
              widget.model.name ?? '',
              style: Theme.of(context)
                  .textTheme
                  .caption
                  ?.copyWith(color: const Color(0xe6212121)),
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
