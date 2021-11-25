

import 'package:demo_sapo_app/data/dto/product/image_model_dto.dart';
import 'package:demo_sapo_app/data/dto/product/variant_price_dto.dart';
import 'package:demo_sapo_app/domain/model/home_config/variant_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import 'inventories_model_dto.dart';

part 'variant_model_dto.g.dart';

@JsonSerializable()
class VariantModelDto implements VariantModel {
  @override
  String? barcode;

  @override
  String? description;

  @override
  bool? ellable;

  @override
  int? id;

  @override
  String? name;

  @override
  String? opt1;

  @override
  int? product_id;

  @override
  String? product_name;

  @override
  String? sku;

  @override
  String? unit;

  @override
  String? weight_unit;

  @override
  int? weight_value;

  @override
  String? discount;

  @override
  String? thumbnail;

  @override
  List<ImageModelDto>? images;

  @override
  List<InventoriesModelDto>? inventories;

  @override
  List<VariantPriceDto>? variant_prices;

  VariantModelDto(
      this.barcode,
      this.description,
      this.ellable,
      this.id,
      this.name,
      this.opt1,
      this.product_id,
      this.product_name,
      this.sku,
      this.unit,
      this.weight_unit,
      this.weight_value,
      this.discount,
      this.thumbnail,
      this.images,
      this.inventories,
      this.variant_prices);

  factory VariantModelDto.fromJson(Map<String, dynamic> json) {
    return _$VariantModelDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$VariantModelDtoToJson(this);
  }

  @override
  // TODO: implement comparePrice
  int get comparePrice {
    return variant_prices?.firstWhere((element) => element.price_list_id == 1553792, orElse: () {
      return variant_prices!.firstWhere((element) => element.price_list_id == 0, orElse: () {
        return VariantPriceDto(
            0,
            -1
        );
      });
    }).value ?? 0;
  }

  @override
  // TODO: implement salePrice
  int get salePrice {
    return variant_prices?.firstWhere((element) => element.price_list_id == 1553792, orElse: () {
      return variant_prices!.firstWhere((element) => element.price_list_id == 0, orElse: () {
        return VariantPriceDto(
            0,
            -1
        );
      });
    }).value ?? 0;
  }

  @override
  int get available => 8;
}