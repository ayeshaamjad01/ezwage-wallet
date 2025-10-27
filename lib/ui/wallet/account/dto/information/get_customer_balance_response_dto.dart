import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_customer_balance_response_dto.freezed.dart';

part 'get_customer_balance_response_dto.g.dart';

@freezed
abstract class GetCustomerBalanceResponseDto
    with _$GetCustomerBalanceResponseDto {
  const factory GetCustomerBalanceResponseDto({
    required String accountBalance,
    @Default({}) Map extInfo,
  }) = _GetCustomerBalanceResponseDto;

  factory GetCustomerBalanceResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetCustomerBalanceResponseDtoFromJson(json);
}
