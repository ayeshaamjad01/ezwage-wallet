import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_bank_list_response_dto.freezed.dart';

part 'get_bank_list_response_dto.g.dart';

@freezed
abstract class GetBankListResponseDto with _$GetBankListResponseDto {
  const factory GetBankListResponseDto({
    required String statusCode,
    required String statusMessage,
    required List<BankItemDto> data,
  }) = _GetBankListResponseDto;

  factory GetBankListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetBankListResponseDtoFromJson(json);
}

@freezed
abstract class BankItemDto with _$BankItemDto {
  const factory BankItemDto({
    required int bankId,
    required String bankName,
    required String bankLogo,
  }) = _BankItemDto;

  factory BankItemDto.fromJson(Map<String, dynamic> json) =>
      _$BankItemDtoFromJson(json);
}
