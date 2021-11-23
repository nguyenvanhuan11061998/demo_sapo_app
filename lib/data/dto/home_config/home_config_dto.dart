import 'package:demo_sapo_app/data/dto/home_config/banner.dart';
import 'package:demo_sapo_app/data/dto/home_config/category_group_dto.dart';
import 'package:demo_sapo_app/data/dto/home_config/top_category_dto.dart';
import 'package:demo_sapo_app/domain/model/home_config/home_config_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonSerializable()
class HomeConfigDto implements HomeConfigModel {
  @override
  List<TopCategoryDto>? topCategory;

  @override
  List<BannerDto>? banners;

  @override
  List<CategoriesGroupDto>? categoriesGroup;

  HomeConfigDto(this.topCategory, this.banners, this.categoriesGroup);

  HomeConfigDto.fromJson(Map<String, dynamic> json) {
    topCategory = (json['topCategory'] as List<dynamic>?)
        ?.map((e) => TopCategoryDto.fromJson(e as Map<String, dynamic>))
        .toList();
    banners = (json['banner'] as List<dynamic>)
        ?.map((e) => BannerDto.fromJson(e as Map<String, dynamic>))
        .toList();
    categoriesGroup = (json['categoriesGroup'] as List<dynamic>?)
        ?.map((e) => CategoriesGroupDto.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
