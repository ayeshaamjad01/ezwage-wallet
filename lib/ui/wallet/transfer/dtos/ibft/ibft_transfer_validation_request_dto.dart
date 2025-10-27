import 'package:freezed_annotation/freezed_annotation.dart';

part 'ibft_transfer_validation_request_dto.freezed.dart';

part 'ibft_transfer_validation_request_dto.g.dart';

@freezed
abstract class IbftTransferValidationRequestDto
    with _$IbftTransferValidationRequestDto {
  const factory IbftTransferValidationRequestDto({
    required String userId,
    required String otp,
    required String answer,
    @Default("v1") version,
  }) = _IbftTransferValidationRequestDto;

  factory IbftTransferValidationRequestDto.fromJson(
    Map<String, dynamic> json,
  ) => _$IbftTransferValidationRequestDtoFromJson(json);
}
