// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_account_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterAccountRequestDto _$RegisterAccountRequestDtoFromJson(
  Map<String, dynamic> json,
) => _RegisterAccountRequestDto(
  cnicIssueDate: json['cnicIssueDate'] as String,
  verficationToken: json['verficationToken'] as String,
  fatherName: json['fatherName'] as String,
  placeOfBirth: json['placeOfBirth'] as String,
  mobileNumber: json['mobileNumber'] as String,
  motherName: json['motherName'] as String,
  otp: json['otp'] as String,
  cityId: json['cityId'] as String,
  customerName: json['customerName'] as String,
  cnicFrontPic: json['cnicFrontPic'] as String,
  cnicBackPic: json['cnicBackPic'] as String,
  selfie: json['selfie'] as String,
  permanentAddress: json['permanentAddress'] as String,
  cnicNumber: json['cnicNumber'] as String,
  email: json['email'] as String,
  businessName: json['businessName'] as String?,
  businessAddress: json['businessAddress'] as String?,
  location: json['location'] as String?,
  merchantTypeId: json['merchantTypeId'] as String?,
  monthlyTurnOverId: json['monthlyTurnOverId'] as String?,
  businessVerificationDpc: json['businessVerificationDpc'] as String?,
);

Map<String, dynamic> _$RegisterAccountRequestDtoToJson(
  _RegisterAccountRequestDto instance,
) => <String, dynamic>{
  'cnicIssueDate': instance.cnicIssueDate,
  'verficationToken': instance.verficationToken,
  'fatherName': instance.fatherName,
  'placeOfBirth': instance.placeOfBirth,
  'mobileNumber': instance.mobileNumber,
  'motherName': instance.motherName,
  'otp': instance.otp,
  'cityId': instance.cityId,
  'customerName': instance.customerName,
  'cnicFrontPic': instance.cnicFrontPic,
  'cnicBackPic': instance.cnicBackPic,
  'selfie': instance.selfie,
  'permanentAddress': instance.permanentAddress,
  'cnicNumber': instance.cnicNumber,
  'email': instance.email,
  'businessName': instance.businessName,
  'businessAddress': instance.businessAddress,
  'location': instance.location,
  'merchantTypeId': instance.merchantTypeId,
  'monthlyTurnOverId': instance.monthlyTurnOverId,
  'businessVerificationDpc': instance.businessVerificationDpc,
};
