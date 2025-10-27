import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_statement_request_dto.freezed.dart';
part 'customer_statement_request_dto.g.dart';

@freezed
abstract class CustomerStatementRequestDto with _$CustomerStatementRequestDto {
  const factory CustomerStatementRequestDto({
    required String mobile,
    @Default("v1") String version,
    required String startDate,
    required String endDate,
    @Default({}) Map<String, dynamic> extInfo,
  }) = _CustomerStatementRequestDto;

  factory CustomerStatementRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CustomerStatementRequestDtoFromJson(json);
}
