import 'package:ezwage/ui/wallet/core/enums/telecos_bill_type.dart';
import 'package:ezwage/ui/wallet/core/utils/json_converters/search_request_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'telco_bundle_list_detail_request_dto.freezed.dart';

part 'telco_bundle_list_detail_request_dto.g.dart';

@freezed
abstract class TelcoBundleListDetailRequestDto
    with _$TelcoBundleListDetailRequestDto {
  const factory TelcoBundleListDetailRequestDto({
    @Default("v1") String version,
    required String offset,
    required String limit,
    required String telcoId,
    @SearchRequestConverter() String? search,
  }) = _TelcoBundleListDetailRequestDto;

  factory TelcoBundleListDetailRequestDto.fromJson(Map<String, dynamic> json) =>
      _$TelcoBundleListDetailRequestDtoFromJson(json);
}
