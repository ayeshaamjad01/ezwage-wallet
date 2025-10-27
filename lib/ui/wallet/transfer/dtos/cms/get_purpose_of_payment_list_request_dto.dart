import 'package:ezwage/ui/wallet/core/utils/json_converters/search_request_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_purpose_of_payment_list_request_dto.freezed.dart';
part 'get_purpose_of_payment_list_request_dto.g.dart';

@freezed
abstract class GetPurposeOfPaymentListRequestDto with _$GetPurposeOfPaymentListRequestDto {
  const factory GetPurposeOfPaymentListRequestDto({
    required String offset,
    required String limit,
    @SearchRequestConverter()  String? search,
    @Default("v1") String version,
  }) = _GetPurposeOfPaymentListRequestDto;

  factory GetPurposeOfPaymentListRequestDto.fromJson(Map<String, dynamic> json) =>
      _$GetPurposeOfPaymentListRequestDtoFromJson(json);
}
