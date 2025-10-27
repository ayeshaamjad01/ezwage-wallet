// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_linking_inquiry_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountLinkingInquiryRequestDto _$AccountLinkingInquiryRequestDtoFromJson(
  Map<String, dynamic> json,
) => _AccountLinkingInquiryRequestDto(
  cnic: json['cnic'] as String,
  extInfo: json['extInfo'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$AccountLinkingInquiryRequestDtoToJson(
  _AccountLinkingInquiryRequestDto instance,
) => <String, dynamic>{'cnic': instance.cnic, 'extInfo': instance.extInfo};
