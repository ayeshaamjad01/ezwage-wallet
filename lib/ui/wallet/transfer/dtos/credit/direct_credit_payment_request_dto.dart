import 'package:freezed_annotation/freezed_annotation.dart';

part 'direct_credit_payment_request_dto.freezed.dart';

part 'direct_credit_payment_request_dto.g.dart';

@freezed
abstract class DirectCreditPaymentRequestDto
    with _$DirectCreditPaymentRequestDto {
  const factory DirectCreditPaymentRequestDto({
    required String receiverAccount,
    required String terminalId,
    required String amount,
    required String terminalNameLoc,
    @Default("v1") String version,
    required String customerId,
    required String verificationToken,
    String? index,
    String? otp,
    String? sessionId,
    String? template,
    @Default({}) Map<String, dynamic> extInfo,
  }) = _DirectCreditPaymentRequestDto;

  factory DirectCreditPaymentRequestDto.fromJson(Map<String, dynamic> json) =>
      _$DirectCreditPaymentRequestDtoFromJson(json);
}
