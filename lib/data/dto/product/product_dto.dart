import 'package:demo_sapo_app/data/dto/product/variant_model_dto.dart';
import 'package:demo_sapo_app/domain/model/home_config/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'image_model_dto.dart';
import 'option_model_dto.dart';

@JsonSerializable()
class ProductDto implements ProductModel {
  @override
  String? brand;

  @override
  int? category_id;

  @override
  String? description;

  @override
  String? discount;

  @override
  int? id;

  @override
  List<ImageModelDto>? images;

  @override
  String? name;

  @override
  List<OptionsModelDto>? options;

  @override
  List<VariantModelDto>? variants;

  ProductDto(this.brand, this.category_id, this.description, this.discount,
      this.id, this.images, this.name, this.options, this.variants);

  ProductDto.fromJson(Map<String, dynamic> json) {
    brand = json['brand'] as String?;
    category_id = json['category_id'] as int?;
    description = json['description'] as String?;
    discount = json['discount'] as String?;
    id = json['id'] as int?;
    name = json['name'] as String?;

    images = (json['images'] as List<dynamic>).map((e) => ImageModelDto.fromJson(e as Map<String, dynamic>)).toList();
    options = (json['options'] as List<dynamic>).map((e) => OptionsModelDto.fromJson(e as Map<String, dynamic>)).toList();
    variants = (json['variants'] as List<dynamic>).map((e) => VariantModelDto.fromJson(e as Map<String, dynamic>)).toList();
  }
}
