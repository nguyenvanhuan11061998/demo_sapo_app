import 'package:demo_sapo_app/domain/model/order/order_line_item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_line_item_dto.g.dart';

@JsonSerializable()
class OrderLineItemDto extends OrderLineItemModel {
  @override
  final int id;

  @override
  final int price;

  @override
  final int product_id;

  @override
  final String product_name;

  @override
  final double quantity;

  @override
  final int variant_id;

  @override
  final String variant_name;

  OrderLineItemDto(this.id, this.price, this.product_id, this.product_name,
      this.quantity, this.variant_id, this.variant_name);

  factory OrderLineItemDto.fromJson(Map<String, dynamic> json) {
    return _$OrderLineItemDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$OrderLineItemDtoToJson(this);
  }
}
