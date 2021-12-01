


import 'package:demo_sapo_app/data/dto/cart/warranty_card/item_model_dto.dart';
import 'package:demo_sapo_app/domain/model/warranty_card/warranty_card_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'warranty_card_model_dto.g.dart';

@JsonSerializable()
class WarrantyCardModelDto extends WarrantyCardModel {
  
  @override
  final String code;

  @override
  final int id;

  @override
  final ItemModelDto item;

  @override
  final String? note;

  @override
  final int order_id;

  @override
  final String status;

  @override
  final int tenant_id;

  WarrantyCardModelDto(this.code, this.id, this.item, this.note, this.order_id,
      this.status, this.tenant_id);

  factory WarrantyCardModelDto.fromJson(Map<String, dynamic> json) {
    return _$WarrantyCardModelDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$WarrantyCardModelDtoToJson(this);
  }
}