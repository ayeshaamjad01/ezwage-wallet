import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_mini_statement_request_dto.freezed.dart';
part 'customer_mini_statement_request_dto.g.dart';

@freezed
abstract class CustomerMiniStatementRequestDto with _$CustomerMiniStatementRequestDto {
  const factory CustomerMiniStatementRequestDto({
    required String mobileNo,
    @Default("v1") String version,
    required String customerId,
    @Default({}) Map<String, dynamic> extInfo,
  }) = _CustomerMiniStatementRequestDto;

  factory CustomerMiniStatementRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CustomerMiniStatementRequestDtoFromJson(json);
}
