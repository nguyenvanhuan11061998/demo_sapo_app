

import 'package:demo_sapo_app/domain/model/home_config/image_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonSerializable()
class ImageModelDto extends ImageModel{

  @override
  String? full_path;

  @override
  int? id;

  @override
  String? path;

  @override
  int? size;


  ImageModelDto(this.full_path, this.id, this.path, this.size);

  ImageModelDto.fromJson(Map<String, dynamic> json) {
    full_path = json['full_path'] as String?;
    id = json['id'] as int?;
    path = json['path'] as String?;
    size = json['size'] as int?;
  }
  Map<String, dynamic> toJson() {
    return <String, dynamic> {
      'full_path' : full_path,
      'id' : id,
      'path' : path,
      'size' : size
    };
  }
}