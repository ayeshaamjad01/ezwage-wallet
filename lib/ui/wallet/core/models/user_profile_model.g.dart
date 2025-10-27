// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) =>
    _UserProfileModel(
      customerId: (json['customerId'] as num?)?.toInt(),
      accountTitle: json['accountTitle'] as String?,
      email: json['email'] as String?,
      mobileNo: json['mobileNo'] as String?,
      cnic: json['cnic'] as String?,
      currentAddress: json['currentAddress'] as String?,
      permanentAddress: json['permanentAddress'] as String?,
      iban: json['iban'] as String?,
      accountBalance: json['accountBalance'] as String?,
      accountStatus: json['accountStatus'] as String?,
      accountType: json['accountType'] as String?,
      gender: json['gender'] as String?,
      extInfo: json['extInfo'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$UserProfileModelToJson(_UserProfileModel instance) =>
    <String, dynamic>{
      'customerId': instance.customerId,
      'accountTitle': instance.accountTitle,
      'email': instance.email,
      'mobileNo': instance.mobileNo,
      'cnic': instance.cnic,
      'currentAddress': instance.currentAddress,
      'permanentAddress': instance.permanentAddress,
      'iban': instance.iban,
      'accountBalance': instance.accountBalance,
      'accountStatus': instance.accountStatus,
      'accountType': instance.accountType,
      'gender': instance.gender,
      'extInfo': instance.extInfo,
    };
