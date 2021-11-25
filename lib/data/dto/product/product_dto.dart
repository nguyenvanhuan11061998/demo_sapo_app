import 'package:demo_sapo_app/data/dto/product/variant_model_dto.dart';
import 'package:demo_sapo_app/domain/model/home_config/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'image_model_dto.dart';
import 'option_model_dto.dart';

part 'product_dto.g.dart';

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

  factory ProductDto.fromJson(Map<String, dynamic> json) {
    return _$ProductDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ProductDtoToJson(this);
  }
}
