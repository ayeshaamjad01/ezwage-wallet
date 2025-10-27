import 'package:freezed_annotation/freezed_annotation.dart';

part 'ibft_payment_request_dto.freezed.dart';

part 'ibft_payment_request_dto.g.dart';

@freezed
abstract class IbftPaymentRequestDto with _$IbftPaymentRequestDto {
  const factory IbftPaymentRequestDto({
    required String senderAccount,
    required String customerId,
    required String receiverAccount,
    required String amount,
    required String bankId,
    required String purposeId,
    required String verificationToken,
    @Default("v1") String version,
    String? template,
    String? beneficiaryBank,
    String? beneficiaryTitle,
    String? beneficiaryIban,
    String? index,
    String? otp,
    String? sessionId,
    String? beneficiaryBranch,
  }) = _IbftPaymentRequestDto;

  factory IbftPaymentRequestDto.fromJson(Map<String, dynamic> json) =>
      _$IbftPaymentRequestDtoFromJson(json);
}
