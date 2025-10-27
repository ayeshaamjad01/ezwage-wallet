import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_gl_statement_request_dto.freezed.dart';

part 'get_gl_statement_request_dto.g.dart';

@freezed
abstract class GetGlStatementRequestDto with _$GetGlStatementRequestDto {
  const factory GetGlStatementRequestDto({
    required String senderAccount,
    required String customerId,
    required String receiverAccount,
    required String amount,
    @Default("v1") String version,
    @Default({}) Map extInfo,
  }) = _GetGlStatementRequestDto;

  factory GetGlStatementRequestDto.fromJson(Map<String, dynamic> json) =>
      _$GetGlStatementRequestDtoFromJson(json);
}
