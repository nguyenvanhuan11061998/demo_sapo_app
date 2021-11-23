


import 'package:demo_sapo_app/domain/model/home_config/inventories_model.dart';

class InventoriesModelDto implements InventoriesModel {
  @override
  int? available;

  @override
  int? location_id;

  @override
  int? variant_id;

  InventoriesModelDto(this.available, this.location_id, this.variant_id);

  InventoriesModelDto.fromJson(Map<String, dynamic> json) {
    available = json['available'] as int?;
    location_id = json['location_id'] as int?;
    variant_id = json['variant_id'] as int?;
  }
}