import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_customer_balance_request_dto.freezed.dart';

part 'get_customer_balance_request_dto.g.dart';

@freezed
abstract class GetCustomerBalanceRequestDto
    with _$GetCustomerBalanceRequestDto {
  const factory GetCustomerBalanceRequestDto({
    required String mobileNo,
    required String customerId,
    @Default("v1") String version,
    @Default({}) Map<String, dynamic> extInfo,
  }) = _GetCustomerBalanceRequestDto;

  factory GetCustomerBalanceRequestDto.fromJson(Map<String, dynamic> json) =>
      _$GetCustomerBalanceRequestDtoFromJson(json);
}
