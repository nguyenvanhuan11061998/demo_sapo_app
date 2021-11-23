

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonSerializable()
class VariantPriceDto {
  int? value;
  int? price_list_id;

  VariantPriceDto(this.value, this.price_list_id);

  VariantPriceDto.fromJson(Map<String, dynamic> json) {
    value = json['value'] as int;
    price_list_id = json['price_list_id'] as int;
  }
}