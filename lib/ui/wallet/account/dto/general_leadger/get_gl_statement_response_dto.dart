import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_gl_statement_response_dto.freezed.dart';

part 'get_gl_statement_response_dto.g.dart';

@freezed
abstract class GetGlStatementResponseDto with _$GetGlStatementResponseDto {
  const factory GetGlStatementResponseDto({
    List<GlTransactionDto>? transactionList,
  }) = _GetGlStatementResponseDto;

  factory GetGlStatementResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetGlStatementResponseDtoFromJson(json);
}

@freezed
abstract class GlTransactionDto with _$GlTransactionDto {
  const factory GlTransactionDto({
    required String taxAndFee,
    required String mobileNo,
    required String customerId,
    required String accountTitle,
    @Default({}) extInfo,
  }) = _GlTransactionDto;

  factory GlTransactionDto.fromJson(Map<String, dynamic> json) =>
      _$GlTransactionDtoFromJson(json);
}
