import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_gl_balance_request_dto.freezed.dart';

part 'get_gl_balance_request_dto.g.dart';

@freezed
abstract class GetGlBalanceRequestDto with _$GetGlBalanceRequestDto {
  const factory GetGlBalanceRequestDto({
    required String glAccount,
    required String fromDate,
    required String toDate,
  }) = _GetGlBalanceRequestDto;

  factory GetGlBalanceRequestDto.fromJson(Map<String, dynamic> json) =>
      _$GetGlBalanceRequestDtoFromJson(json);
}
