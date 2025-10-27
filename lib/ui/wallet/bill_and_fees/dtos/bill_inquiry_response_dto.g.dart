// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_inquiry_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BillInquiryResponseDto _$BillInquiryResponseDtoFromJson(
  Map<String, dynamic> json,
) => _BillInquiryResponseDto(
  statusCode: json['statusCode'] as String,
  statusMessage: json['statusMessage'] as String,
  verificationToken: json['verificationToken'] as String,
  verificationMethod:
      $enumDecodeNullable(
        _$VerificationMethodEnumMap,
        json['verificationMethod'],
      ) ??
      VerificationMethod.otp,
  data: json['data'] == null
      ? null
      : BillInquiryDataDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BillInquiryResponseDtoToJson(
  _BillInquiryResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'statusMessage': instance.statusMessage,
  'verificationToken': instance.verificationToken,
  'verificationMethod':
      _$VerificationMethodEnumMap[instance.verificationMethod]!,
  'data': instance.data?.toJson(),
};

const _$VerificationMethodEnumMap = {
  VerificationMethod.otp: 'Otp',
  VerificationMethod.bvs: 'bvs',
  VerificationMethod.NONE: 'NONE',
};

_BillInquiryDataDto _$BillInquiryDataDtoFromJson(Map<String, dynamic> json) =>
    _BillInquiryDataDto(
      totalAmount: json['totalAmount'] as String?,
      billMonth: json['billMonth'] as String?,
      amountBeforeDueDate: json['amountBeforeDueDate'] as String?,
      billStatus: json['billStatus'] as String?,
      billIssueDate: json['billIssueDate'] as String?,
      consumerNumber: json['consumerNumber'] as String?,
      billerName: json['billerName'] as String?,
      billDueDate: json['billDueDate'] as String?,
      amountAfterDueDate: json['amountAfterDueDate'] as String?,
      consumerName: json['consumerName'] as String?,
    );

Map<String, dynamic> _$BillInquiryDataDtoToJson(_BillInquiryDataDto instance) =>
    <String, dynamic>{
      'totalAmount': instance.totalAmount,
      'billMonth': instance.billMonth,
      'amountBeforeDueDate': instance.amountBeforeDueDate,
      'billStatus': instance.billStatus,
      'billIssueDate': instance.billIssueDate,
      'consumerNumber': instance.consumerNumber,
      'billerName': instance.billerName,
      'billDueDate': instance.billDueDate,
      'amountAfterDueDate': instance.amountAfterDueDate,
      'consumerName': instance.consumerName,
    };
