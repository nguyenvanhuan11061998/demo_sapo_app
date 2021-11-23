

import 'package:demo_sapo_app/data/dto/article/article_model_dto.dart';
import 'package:demo_sapo_app/domain/model/blogs/article_model.dart';

class ListArticleModelDto {
  List<ArticleModel>? listArticle;

  ListArticleModelDto(this.listArticle);

  ListArticleModelDto.fromJson(Map<String, dynamic> json) {
    listArticle = (json['articles'] as List<dynamic>).map((e) => ArticleModelDto.fromJson(e)).toList();
  }
}