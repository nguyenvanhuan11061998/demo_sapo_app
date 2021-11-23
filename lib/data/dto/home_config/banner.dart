

import 'package:demo_sapo_app/domain/model/home_config/banner_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonSerializable()
class BannerDto implements BannerModel {

  @override
  int? id;

  @override
  String? image;

  @override
  String? title;

  @override
  String? type;

  BannerDto(this.id, this.image, this.title, this.type);

  BannerDto.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    image = json['image'] as String?;
    type = json['type'] as String?;
    title = json['title'] as String?;
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic> {
      'id' : id,
      'image' : image,
      'type' : type,
      'title' : title
    };
  }
}
