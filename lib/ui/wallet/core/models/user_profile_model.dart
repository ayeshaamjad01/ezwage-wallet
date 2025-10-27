import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_model.freezed.dart';

part 'user_profile_model.g.dart';

@freezed
abstract class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    int? customerId,
    String? accountTitle,
    String? email,
    String? mobileNo,
    String? cnic,
    String? currentAddress,
    String? permanentAddress,
    String? iban,
    String? accountBalance,
    String? accountStatus,
    String? accountType,
    String? gender,
    Map<String, dynamic>? extInfo,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}
