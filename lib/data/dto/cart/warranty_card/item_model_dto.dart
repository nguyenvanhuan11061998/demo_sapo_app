

import 'package:demo_sapo_app/domain/model/warranty_card/item_model.dart';
import 'package:demo_sapo_app/data/dto/cart/warranty_card/warranty_term_model_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_model_dto.g.dart';

@JsonSerializable()
class ItemModelDto extends ItemModel {
  @override
  final int id;

  @override
  final int product_id;

  @override
  final double quantity;

  @override
  final String sku;

  @override
  final String title;

  @override
  final int variant_id;

  @override
  final WarrantyTermModelDto warranty_term;

  ItemModelDto(this.id, this.product_id, this.quantity, this.sku, this.title,
      this.variant_id, this.warranty_term);

  factory ItemModelDto.fromJson(Map<String, dynamic> json) {
    return _$ItemModelDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ItemModelDtoToJson(this);
  }
}