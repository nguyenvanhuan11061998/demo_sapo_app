

import 'package:demo_sapo_app/data/dto/article/image_article_model_dto.dart';
import 'package:demo_sapo_app/domain/model/blogs/article_model.dart';
import 'package:demo_sapo_app/domain/model/blogs/image_article_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonSerializable()
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

  @override
  String? modified_on;

  ArticleModelDto(this.alias, this.blog_id, this.content, this.id, this.image,
      this.media_title, this.modified_on, this.title);

  ArticleModelDto.fromJson(Map<String, dynamic> json) {
    alias = json['alias'] as String?;
    blog_id = json['blog_id'] as int?;
    content = json['content'] as String?;
    id = json['id'] as int?;
    media_title = json['media_title'] as String?;
    title = json['title'] as String?;
    modified_on = json['modified_on'] as String?;
    image = ImageArticleModelDto.fromJson(json['image'] as Map<String, dynamic>);
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic> {
      'alias' : alias,
      'blog_id' : blog_id,
      'content' : content,
      'id' : id,
      'media_title' : media_title,
      'modified_on' : modified_on,
      'title' : title,
    };
  }
}