import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_pin_request_dto.freezed.dart';
part 'change_pin_request_dto.g.dart';

@freezed
abstract class ChangePinRequestDto with _$ChangePinRequestDto {
  const factory ChangePinRequestDto({
    required String mobileNo,
    required String oldPin,
    required String newPin,
  }) = _ChangePinRequestDto;

  factory ChangePinRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ChangePinRequestDtoFromJson(json);
}
