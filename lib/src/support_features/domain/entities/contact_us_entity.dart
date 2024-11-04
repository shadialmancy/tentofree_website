// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_us_entity.freezed.dart';
part 'contact_us_entity.g.dart';

@freezed
class ContactUsEntity with _$ContactUsEntity {
  factory ContactUsEntity({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? email,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    num? country,
    @JsonKey(name: 'request_types') String? requestTypes,
    @JsonKey(name: 'inquiry_title') String? inquiryTitle,
    String? description,
  }) = _ContactUsEntity;

  factory ContactUsEntity.fromJson(Map<String, dynamic> json) =>
      _$ContactUsEntityFromJson(json);
}
