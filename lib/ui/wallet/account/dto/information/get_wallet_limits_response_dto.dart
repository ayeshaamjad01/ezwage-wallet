import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_wallet_limits_response_dto.freezed.dart';

part 'get_wallet_limits_response_dto.g.dart';

@freezed
abstract class GetWalletLimitsResponseDto with _$GetWalletLimitsResponseDto {
  const factory GetWalletLimitsResponseDto({
    required String dailyLimit,
    required String monthlyLimit,
    required String yearlyLimit,
    required String remainingDailyLimit,
    required String remainingMonthlyLimit,
    required String remainingYearlyLimit,
  }) = _GetWalletLimitsResponseDto;

  factory GetWalletLimitsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetWalletLimitsResponseDtoFromJson(json);
}
