// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/contact_us_entity.dart';

part 'contact_us_dto.freezed.dart';
part 'contact_us_dto.g.dart';

@freezed
class ContactUsDto with _$ContactUsDto {
  factory ContactUsDto({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? email,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    num? country,
    @JsonKey(name: 'request_types') String? requestTypes,
    @JsonKey(name: 'inquiry_title') String? inquiryTitle,
    String? description,
  }) = _ContactUsDto;

  factory ContactUsDto.fromJson(Map<String, dynamic> json) =>
      _$ContactUsDtoFromJson(json);
}

extension ContactUsDtoX on ContactUsDto {
  ContactUsEntity toEntity() => ContactUsEntity(
        country: country,
        description: description,
        email: email,
        firstName: firstName,
        inquiryTitle: inquiryTitle,
        lastName: lastName,
        phoneNumber: phoneNumber,
        requestTypes: requestTypes
      );
}
