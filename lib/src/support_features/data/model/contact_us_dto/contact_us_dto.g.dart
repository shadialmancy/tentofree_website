// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_us_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactUsDtoImpl _$$ContactUsDtoImplFromJson(Map<String, dynamic> json) =>
    _$ContactUsDtoImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phone_number'] as String?,
      country: json['country'] as num?,
      requestTypes: json['request_types'] as String?,
      inquiryTitle: json['inquiry_title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$ContactUsDtoImplToJson(_$ContactUsDtoImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'country': instance.country,
      'request_types': instance.requestTypes,
      'inquiry_title': instance.inquiryTitle,
      'description': instance.description,
    };
