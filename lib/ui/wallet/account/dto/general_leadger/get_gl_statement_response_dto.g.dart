// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_gl_statement_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetGlStatementResponseDto _$GetGlStatementResponseDtoFromJson(
  Map<String, dynamic> json,
) => _GetGlStatementResponseDto(
  transactionList: (json['transactionList'] as List<dynamic>?)
      ?.map((e) => GlTransactionDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetGlStatementResponseDtoToJson(
  _GetGlStatementResponseDto instance,
) => <String, dynamic>{
  'transactionList': instance.transactionList?.map((e) => e.toJson()).toList(),
};

_GlTransactionDto _$GlTransactionDtoFromJson(Map<String, dynamic> json) =>
    _GlTransactionDto(
      taxAndFee: json['taxAndFee'] as String,
      mobileNo: json['mobileNo'] as String,
      customerId: json['customerId'] as String,
      accountTitle: json['accountTitle'] as String,
      extInfo: json['extInfo'] ?? const {},
    );

Map<String, dynamic> _$GlTransactionDtoToJson(_GlTransactionDto instance) =>
    <String, dynamic>{
      'taxAndFee': instance.taxAndFee,
      'mobileNo': instance.mobileNo,
      'customerId': instance.customerId,
      'accountTitle': instance.accountTitle,
      'extInfo': instance.extInfo,
    };
