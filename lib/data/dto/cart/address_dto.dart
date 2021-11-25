

import 'package:demo_sapo_app/domain/model/address_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_dto.g.dart';

@JsonSerializable()
class AddressDto implements AddressModel {
  @override
  String? address1;

  @override
  String? address2;

  @override
  String? city;

  @override
  String? country;

  @override
  String? district;

  @override
  String? email;

  @override
  String? first_name;

  @override
  String? full_address;

  @override
  String? full_name;

  @override
  int id;

  @override
  String? label;

  @override
  String? last_name;

  @override
  String? phone_number;

  @override
  String? ward;

  AddressDto(
      this.address1,
      this.address2,
      this.city,
      this.country,
      this.district,
      this.email,
      this.first_name,
      this.full_address,
      this.full_name,
      this.id,
      this.label,
      this.last_name,
      this.phone_number,
      this.ward);

  @override
  // TODO: implement localFullAddress
  String get localFullAddress {
    return [
      address1,
      ward,
      district,
      city
    ].where((element) => element?.isNotEmpty == true).join(', ');
  }

  factory AddressDto.fromJson(Map<String, dynamic> json) {
    return _$AddressDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AddressDtoToJson(this);
  }
}