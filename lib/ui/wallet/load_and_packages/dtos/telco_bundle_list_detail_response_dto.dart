// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'telco_bundle_list_detail_response_dto.freezed.dart';
//
// part 'telco_bundle_list_detail_response_dto.g.dart';
//
// @freezed
// abstract class TelcoBundleListDetailResponseDto
//     with _$TelcoBundleListDetailResponseDto {
//   const factory TelcoBundleListDetailResponseDto({
//     required String statusCode,
//     required String statusMessage,
//     @Default([]) List<BundleDetailDto> data,
//   }) = _TelcoBundleListDetailResponseDto;
//
//   factory TelcoBundleListDetailResponseDto.fromJson(
//     Map<String, dynamic> json,
//   ) => _$TelcoBundleListDetailResponseDtoFromJson(json);
// }
//
// @freezed
// abstract class BundleDetailDto with _$BundleDetailDto {
//   const factory BundleDetailDto({
//     String? telcoId,
//     //     String? image,
//     String? telcoName,
//   }) = _BundleDetailDto;
//
//   factory BundleDetailDto.fromJson(Map<String, dynamic> json) =>
//       _$BundleDetailDtoFromJson(json);
// }



import 'package:freezed_annotation/freezed_annotation.dart';

part 'telco_bundle_list_detail_response_dto.freezed.dart';
part 'telco_bundle_list_detail_response_dto.g.dart';

@freezed
abstract class TelcoBundleListDetailResponseDto
    with _$TelcoBundleListDetailResponseDto {
  const factory TelcoBundleListDetailResponseDto({
    required String statusCode,
    required String statusMessage,
    @Default([]) List<BundleDetailDto> data,
  }) = _TelcoBundleListDetailResponseDto;

  factory TelcoBundleListDetailResponseDto.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$TelcoBundleListDetailResponseDtoFromJson(json);
}

@freezed
abstract class BundleDetailDto with _$BundleDetailDto {
  const factory BundleDetailDto({
    required int id,
    String? validity,
    String? discount,
    String? price,
    String? description,
    String? data,
    int? sms,
    String? displayName,
    String? bundleType,
    String? oldPrice,
    int? onMin,
    int? offMin,
    int? allMin,
  }) = _BundleDetailDto;

  factory BundleDetailDto.fromJson(Map<String, dynamic> json) =>
      _$BundleDetailDtoFromJson(json);
}
