import 'package:freezed_annotation/freezed_annotation.dart';

part 'inquiry_reponse_model.g.dart';

part 'inquiry_reponse_model.freezed.dart';

@freezed
abstract class InquiryResponseModel with _$InquiryResponseModel {
  const factory InquiryResponseModel({
    required String verificationToken,
    @Default(VerificationMethod.otp) VerificationMethod verificationMethod,
  }) = _InquiryResponseModel;

  factory InquiryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$InquiryResponseModelFromJson(json);
}

@JsonEnum()
enum VerificationMethod {
  @JsonValue("Otp")
  otp,
  bvs,
  NONE,
}

class InquiryResponseConverter
    implements JsonConverter<InquiryResponseModel, Map<String, dynamic>> {
  const InquiryResponseConverter();

  @override
  InquiryResponseModel fromJson(Map<String, dynamic> json) {
    return InquiryResponseModel.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(InquiryResponseModel data) => data.toJson();
}
