// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ibft_payment_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IbftPaymentRequestDto _$IbftPaymentRequestDtoFromJson(
  Map<String, dynamic> json,
) => _IbftPaymentRequestDto(
  senderAccount: json['senderAccount'] as String,
  customerId: json['customerId'] as String,
  receiverAccount: json['receiverAccount'] as String,
  amount: json['amount'] as String,
  bankId: json['bankId'] as String,
  purposeId: json['purposeId'] as String,
  verificationToken: json['verificationToken'] as String,
  version: json['version'] as String? ?? "v1",
  template: json['template'] as String?,
  beneficiaryBank: json['beneficiaryBank'] as String?,
  beneficiaryTitle: json['beneficiaryTitle'] as String?,
  beneficiaryIban: json['beneficiaryIban'] as String?,
  index: json['index'] as String?,
  otp: json['otp'] as String?,
  sessionId: json['sessionId'] as String?,
  beneficiaryBranch: json['beneficiaryBranch'] as String?,
);

Map<String, dynamic> _$IbftPaymentRequestDtoToJson(
  _IbftPaymentRequestDto instance,
) => <String, dynamic>{
  'senderAccount': instance.senderAccount,
  'customerId': instance.customerId,
  'receiverAccount': instance.receiverAccount,
  'amount': instance.amount,
  'bankId': instance.bankId,
  'purposeId': instance.purposeId,
  'verificationToken': instance.verificationToken,
  'version': instance.version,
  'template': instance.template,
  'beneficiaryBank': instance.beneficiaryBank,
  'beneficiaryTitle': instance.beneficiaryTitle,
  'beneficiaryIban': instance.beneficiaryIban,
  'index': instance.index,
  'otp': instance.otp,
  'sessionId': instance.sessionId,
  'beneficiaryBranch': instance.beneficiaryBranch,
};
