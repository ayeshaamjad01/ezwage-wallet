import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_detail_response_dto.freezed.dart';
part 'customer_detail_response_dto.g.dart';

@freezed
abstract class CustomerDetailResponseDto with _$CustomerDetailResponseDto {
  const factory CustomerDetailResponseDto({
    int? customerId,
    String? accountTitle,
    String? email,
    String? mobileNo,
    String? cnic,
    String? currentAddress,
    String? permanentAddress,
    String? iban,
    String? accountBalance,
    String? accountStatus,
    String? accountType,
    String? gender,
    Map<String, dynamic>? extInfo,
  }) = _CustomerDetailResponseDto;

  factory CustomerDetailResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CustomerDetailResponseDtoFromJson(json);
}
