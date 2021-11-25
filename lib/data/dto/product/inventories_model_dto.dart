
import 'package:demo_sapo_app/domain/model/home_config/inventories_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventories_model_dto.g.dart';

@JsonSerializable()
class InventoriesModelDto implements InventoriesModel {
  @override
  int? available;

  @override
  int? location_id;

  @override
  int? variant_id;

  InventoriesModelDto(this.available, this.location_id, this.variant_id);

  factory InventoriesModelDto.fromJson(Map<String, dynamic> json) {
    return _$InventoriesModelDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$InventoriesModelDtoToJson(this);
  }
}