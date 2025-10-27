import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_account_request_dto.freezed.dart';
part 'check_account_request_dto.g.dart';

@freezed
abstract class CheckAccountRequestDto with _$CheckAccountRequestDto {
  const factory CheckAccountRequestDto({
    required String cnicIssuanceDate,
    String? walletType,
    required String cnicNo,
    required String mobileNo,
    @Default({}) Map extInfo,
  }) = _CheckAccountRequestDto;

  factory CheckAccountRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CheckAccountRequestDtoFromJson(json);
}