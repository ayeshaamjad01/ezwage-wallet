import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_account_response_dto.freezed.dart';

part 'check_account_response_dto.g.dart';

@freezed
abstract class CheckAccountResponseDto with _$CheckAccountResponseDto {
  const factory CheckAccountResponseDto({
    required String statusCode,
    required String statusMessage,
    required CheckAccountData data,
  }) = _CheckAccountResponseDto;

  factory CheckAccountResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CheckAccountResponseDtoFromJson(json);
}

@freezed
abstract class CheckAccountData with _$CheckAccountData {
  const factory CheckAccountData({
    required String accountStatus,
    required String verificationToken,
    @Default([]) List<String> motherNameList,
    @Default([]) List<String> birthPlaceList,
    int? remainingLovs,
  }) = _CheckAccountData;

  factory CheckAccountData.fromJson(Map<String, dynamic> json) =>
      _$CheckAccountDataFromJson(json);
}