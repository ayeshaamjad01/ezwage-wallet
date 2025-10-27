import 'package:freezed_annotation/freezed_annotation.dart';

part 'bundle_payment_response_dto.freezed.dart';

part 'bundle_payment_response_dto.g.dart';

@freezed
abstract class BundlePaymentResponseDto with _$BundlePaymentResponseDto {
  const factory BundlePaymentResponseDto({
    required String statusCode,
    required String statusMessage,
    BundlePaymentData? data,
  }) = _BundlePaymentResponseDto;

  factory BundlePaymentResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BundlePaymentResponseDtoFromJson(json);
}

@freezed
abstract class BundlePaymentData with _$BundlePaymentData {
  const factory BundlePaymentData({
    String? transactionDateTime,
    String? transactionId,
    String? sessionId,
  }) = _BundlePaymentData;

  factory BundlePaymentData.fromJson(Map<String, dynamic> json) =>
      _$BundlePaymentDataFromJson(json);
}
