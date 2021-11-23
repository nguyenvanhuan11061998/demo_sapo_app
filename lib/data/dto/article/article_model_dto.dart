

import 'package:demo_sapo_app/data/dto/article/image_article_model_dto.dart';
import 'package:demo_sapo_app/domain/model/blogs/article_model.dart';
import 'package:demo_sapo_app/domain/model/blogs/image_article_model.dart';

class ArticleModelDto implements ArticleModel {

  @override
  String? alias;

  @override
  int? blog_id;

  @override
  String? content;

  @override
  int? id;

  @override
  ImageArticleModel? image;

  @override
  String? media_title;

  @override
  String? title;

  ArticleModelDto(this.alias, this.blog_id, this.content, this.id, this.image,
      this.media_title, this.title);

  ArticleModelDto.fromJson(Map<String, dynamic> json) {
    alias = json['alias'] as String?;
    blog_id = json['blog_id'] as int?;
    content = json['content'] as String?;
    id = json['id'] as int?;
    media_title = json['media_title'] as String?;
    title = json['title'] as String?;
    image = ImageArticleModelDto.fromJson(json['image'] as Map<String, dynamic>);
  }
}