

import 'package:demo_sapo_app/domain/model/blogs/blog_model.dart';

class BlogModelDto implements BlogModel {

  @override
  int? id;

  @override
  String? name;

  BlogModelDto(this.id, this.name);

  BlogModelDto.fromJson(Map<String, dynamic> json) {
    id = json['json'] as int?;
    name = json['name'] as String?;
  }
}