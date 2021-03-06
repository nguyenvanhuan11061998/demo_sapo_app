


import 'package:demo_sapo_app/domain/model/blogs/image_article_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonSerializable()
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

  Map<String, dynamic> toJson() {
    return <String, dynamic> {
      'id' : id,
      'src' : src,
      'size' : size,
      'width' : width,
      'height' : height
    };
  }
}