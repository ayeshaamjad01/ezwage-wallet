import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_rejection_update_request_dto.freezed.dart';

part 'wallet_rejection_update_request_dto.g.dart';

@freezed
abstract class WalletRejectionUpdateRequestDto
    with _$WalletRejectionUpdateRequestDto {
  const factory WalletRejectionUpdateRequestDto({
    required String cnicNumber,
    required String mobileNumber,
    @Default("v1") String version,
    required String verificationToken,
    required String birthPlace,
    required String name,
    required String livePicture,
  }) = _WalletRejectionUpdateRequestDto;

  factory WalletRejectionUpdateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$WalletRejectionUpdateRequestDtoFromJson(json);
}
