

import 'package:demo_sapo_app/domain/model/home_config/option_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonSerializable()
class OptionsModelDto implements OptionsModel {

  @override
  int? id;

  @override
  String? name;

  @override
  int? position;

  @override
  List<String>? values;

  OptionsModelDto(this.id, this.name, this.position, this.values);

  OptionsModelDto.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    name = json['name'] as String?;
    position = json['position'] as int?;
    values = (json['values'] as List<dynamic>).map((e) => e as String).toList();
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic> {
      'id' : id,
      'name' : name,
      'position' : position,
      'values' : values
    };
  }
}