


import 'package:demo_sapo_app/domain/model/blogs/image_article_model.dart';

class ImageArticleModelDto extends ImageArticleModel {

  @override
  double? height;

  @override
  int? id;

  @override
  double? size;

  @override
  String? src;

  @override
  double? width;

  ImageArticleModelDto(this.height, this.id, this.size, this.src, this.width);

  ImageArticleModelDto.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    src = json['src'] as String?;
    size = (json['size'] as int?)?.toDouble();
    width = (json['width'] as int?)?.toDouble();
    height = (json['height'] as int?)?.toDouble();
  }
}