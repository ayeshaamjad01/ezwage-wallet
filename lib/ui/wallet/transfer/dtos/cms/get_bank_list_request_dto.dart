import 'package:ezwage/ui/wallet/core/utils/json_converters/search_request_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_bank_list_request_dto.freezed.dart';

part 'get_bank_list_request_dto.g.dart';

@freezed
abstract class GetBankListRequestDto with _$GetBankListRequestDto {
  const factory GetBankListRequestDto({
    required String offset,
    required String limit,
    @SearchRequestConverter()  String? search,
    @Default("v1") String version,
  }) = _GetBankListRequestDto;

  factory GetBankListRequestDto.fromJson(Map<String, dynamic> json) =>
      _$GetBankListRequestDtoFromJson(json);
}
