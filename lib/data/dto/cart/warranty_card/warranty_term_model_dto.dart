

import 'package:demo_sapo_app/domain/model/warranty_card/wrranty_term_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'warranty_term_model_dto.g.dart';


@JsonSerializable()
class WarrantyTermModelDto extends WarrantyTermModel {
  @override
  final String end_date;

  @override
  final int id;

  @override
  final String start_date;

  @override
  final String term_name;

  @override
  final int term_number;

  @override
  final String term_type;

  @override
  final int warranty_period_days;

  WarrantyTermModelDto(this.end_date, this.id, this.start_date, this.term_name,
      this.term_number, this.term_type, this.warranty_period_days);

  factory WarrantyTermModelDto.fromJson(Map<String, dynamic> json) {
    return _$WarrantyTermModelDtoFromJson(json);
  }

  Map<String, dynamic> toJson () {
    return _$WarrantyTermModelDtoToJson(this);
  }
}