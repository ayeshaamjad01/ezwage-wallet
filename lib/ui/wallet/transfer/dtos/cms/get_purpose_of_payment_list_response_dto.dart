import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_purpose_of_payment_list_response_dto.freezed.dart';

part 'get_purpose_of_payment_list_response_dto.g.dart';

@freezed
abstract class GetPurposeOfPaymentListResponseDto
    with _$GetPurposeOfPaymentListResponseDto {
  const factory GetPurposeOfPaymentListResponseDto({
    required List<PurposeOfPaymentItemDto> data,
  }) = _GetPurposeOfPaymentListResponseDto;

  factory GetPurposeOfPaymentListResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$GetPurposeOfPaymentListResponseDtoFromJson(json);
}

@freezed
abstract class PurposeOfPaymentItemDto with _$PurposeOfPaymentItemDto {
  const factory PurposeOfPaymentItemDto({
    required int purposeId,
    required String purposeName,
  }) = _PurposeOfPaymentItemDto;

  factory PurposeOfPaymentItemDto.fromJson(Map<String, dynamic> json) =>
      _$PurposeOfPaymentItemDtoFromJson(json);
}
