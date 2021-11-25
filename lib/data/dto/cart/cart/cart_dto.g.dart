// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartDto _$CartDtoFromJson(Map<String, dynamic> json) => CartDto(
      (json['cart'] as List<dynamic>)
          .map((e) => CartItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['uid'] as int,
      json['addressModel'] == null
          ? null
          : AddressDto.fromJson(json['addressModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CartDtoToJson(CartDto instance) => <String, dynamic>{
      'addressModel': instance.addressModel,
      'cart': instance.cart,
      'uid': instance.uid,
    };
