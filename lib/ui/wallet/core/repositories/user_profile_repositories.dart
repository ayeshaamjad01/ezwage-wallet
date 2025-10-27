import 'dart:async';
import 'package:ezwage/ui/wallet/core/models/user_profile_model.dart';

class UserProfileRepository {
  // Internal profile storage
  UserProfileModel? _profile;

  // StreamController for profile changes
  final StreamController<UserProfileModel?> _profileController =
      StreamController<UserProfileModel?>.broadcast();

  /// Stream to listen for profile updates
  Stream<UserProfileModel?> profileStream() async* {
    yield _profile;
    yield* _profileController.stream;
  }

  /// Current profile
  UserProfileModel? get currentProfile => _profile;

  /// Replace the entire profile
  void updateProfile(UserProfileModel newProfile) {
    _profile = newProfile;
    _profileController.add(_profile);
  }

  /// Update specific fields
  void updateProfileFields({
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
  }) {
    if (_profile == null) return;

    _profile = _profile!.copyWith(
      accountTitle: accountTitle,
      email: email,
      mobileNo: mobileNo,
      cnic: cnic,
      currentAddress: currentAddress,
      permanentAddress: permanentAddress,
      iban: iban,
      accountBalance: accountBalance,
      accountStatus: accountStatus,
      accountType: accountType,
      gender: gender,
      extInfo: extInfo,
    );

    _profileController.add(_profile);
  }

  /// Dispose resources
  void dispose() {
    _profileController.close();
  }
}
