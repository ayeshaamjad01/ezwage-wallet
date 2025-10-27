import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_account_request_dto.freezed.dart';
part 'fetch_account_request_dto.g.dart';

@freezed
abstract class FetchAccountRequestDto with _$FetchAccountRequestDto {
  const factory FetchAccountRequestDto({
    required String mobileNo,
  }) = _FetchAccountRequestDto;

  factory FetchAccountRequestDto.fromJson(Map<String, dynamic> json) =>
      _$FetchAccountRequestDtoFromJson(json);
}
