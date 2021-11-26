// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) {
  return AddressDto(
    json['address1'] as String?,
    json['address2'] as String?,
    json['city'] as String?,
    json['country'] as String?,
    json['district'] as String?,
    json['email'] as String?,
    json['first_name'] as String?,
    json['full_address'] as String?,
    json['full_name'] as String?,
    json['id'] as int,
    json['label'] as String?,
    json['last_name'] as String?,
    json['phone_number'] as String?,
    json['ward'] as String?,
  );
}

Map<String, dynamic> _$AddressDtoToJson(AddressDto instance) =>
    <String, dynamic>{
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'country': instance.country,
      'district': instance.district,
      'email': instance.email,
      'first_name': instance.first_name,
      'full_address': instance.full_address,
      'full_name': instance.full_name,
      'id': instance.id,
      'label': instance.label,
      'last_name': instance.last_name,
      'phone_number': instance.phone_number,
      'ward': instance.ward,
    };
