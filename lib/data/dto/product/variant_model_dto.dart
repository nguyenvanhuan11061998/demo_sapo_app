

import 'package:demo_sapo_app/data/dto/product/image_model_dto.dart';
import 'package:demo_sapo_app/data/dto/product/variant_price_dto.dart';
import 'package:demo_sapo_app/domain/model/home_config/variant_model.dart';
import 'package:get_it/get_it.dart';

import 'inventories_model_dto.dart';

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

  VariantModelDto.fromJson(Map<String, dynamic> json) {
    barcode = json['barcode'] as String?;
    description = json['description'] as String?;
    ellable = json['ellable'] as bool?;
    id = json['id'] as int?;
    product_id = json['product_id'] as int?;
    product_name = json['product_name'] as String?;
    sku = json['sku'] as String?;
    unit = json['unit'] as String?;
    weight_unit = json['weight_unit'] as String?;
    weight_value = json['weight_value'] as int?;
    discount = json['discount'] as String?;
    thumbnail = json['thumbnail'] as String?;

    images = (json['images'] as List<dynamic>?)?.map((e) => ImageModelDto.fromJson(e as Map<String, dynamic>)).toList();
    inventories = (json['inventories'] as List<dynamic>?)?.map((e) => InventoriesModelDto.fromJson(e as Map<String, dynamic>)).toList();
    variant_prices = (json['variant_prices'] as List<dynamic>?)?.map((e) => VariantPriceDto.fromJson(e as Map<String, dynamic>)).toList();
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