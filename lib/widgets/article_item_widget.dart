import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_sapo_app/domain/model/blogs/article_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticleItemWidget extends StatelessWidget {
  final ArticleModel model;

  ArticleItemWidget({required this.model, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: CachedNetworkImage(
                imageUrl: model.image?.src ?? '',
                fit: BoxFit.cover,
                errorWidget: (BuildContext buildContext, url, err) =>
                    const SizedBox(
                  child: Center(
                    child: Icon(Icons.error),
                  ),
                ),
                placeholder: (BuildContext buildContext, url) {
                  return const CupertinoActivityIndicator();
                },
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
              child: Text(
                model.title ?? '',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(fontSize: 12),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
