

import 'image_article_model.dart';

abstract class ArticleModel {
  int? id;
  int? blog_id;
  String? title;
  String? alias;
  String? media_title;
  String? content;
  ImageArticleModel? image;
}