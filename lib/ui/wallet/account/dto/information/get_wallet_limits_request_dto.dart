import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_wallet_limits_request_dto.freezed.dart';

part 'get_wallet_limits_request_dto.g.dart';

@freezed
abstract class GetWalletLimitsRequestDto with _$GetWalletLimitsRequestDto {
  const factory GetWalletLimitsRequestDto({
    required String mobile,
    required String useCase,
    @Default("version") String version,
  }) = _GetWalletLimitsRequestDto;

  factory GetWalletLimitsRequestDto.fromJson(Map<String, dynamic> json) =>
      _$GetWalletLimitsRequestDtoFromJson(json);
}
