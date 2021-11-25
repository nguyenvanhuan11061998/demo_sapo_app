

import 'package:freezed_annotation/freezed_annotation.dart';

part 'variant_price_dto.g.dart';

@JsonSerializable()
class VariantPriceDto {
  int? value;
  int? price_list_id;

  VariantPriceDto(this.value, this.price_list_id);

  factory VariantPriceDto.fromJson(Map<String, dynamic> json) {
    return _$VariantPriceDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$VariantPriceDtoToJson(this);
  }
}