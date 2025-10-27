import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:ezwage/ui/account_statment/dtos/customer_detail_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/check_account_response_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/fetch_account_request_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/fetch_account_response_dto.dart';
import 'package:ezwage/ui/wallet/account/dto/register_account_response_dto.dart';
import 'package:ezwage/ui/wallet/account/remote_services/account_registration_api_service.dart';
import 'package:ezwage/ui/wallet/account/respository/account_registration_repository_impl.dart';
import 'package:ezwage/ui/wallet/core/constants/demo_image.dart';
import 'package:ezwage/ui/wallet/core/enums/account_status.dart';
import 'package:ezwage/ui/wallet/core/extensions/phone_extension.dart';
import 'package:ezwage/ui/wallet/core/models/user_profile_model.dart';
import 'package:ezwage/ui/wallet/core/repositories/user_profile_repositories.dart';
import 'package:ezwage/ui/wallet/core/utils/easy_loading.dart';
import 'package:ezwage/ui/wallet/core/utils/error_handler.dart';
import 'package:ezwage/ui/wallet/core/utils/result.dart';
import 'package:ezwage/ui/wallet/core/widgets/account_status_dialog.dart';
import 'package:ezwage/ui/wallet/core/widgets/message_dialog.dart';
import 'package:ezwage/ui/wallet/homepage/view/wallet_homepage.dart';
import 'package:ezwage/ui/wallet/service_locator/dio_dependencies.dart';
import 'package:ezwage/ui/wallet/service_locator/service_locator.dart';
import 'package:ezwage/ui/wallet/transfer/dtos/cms/get_cities_list_response_dto.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/model/image_field_model.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/model/network_model.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/remote_services/wallet_rejection_api_service.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/view/create_pin_screen/create_pin_page.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/view/wallet_onboading.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import 'package:ezwage/ui/account_statment/dtos/customer_detail_response_dto.dart';
import '../../../account_statment/remote_services/customer_api_service.dart';
import '../../../account_statment/repositories/customer_statement_repository_impl.dart';
import '../../account/dto/check_account_request_dto.dart';
import '../../account/dto/register_account_request_dto.dart';
import '../../core/utils/secure_storage.dart';
import '../dtos/secret_kyc_question_request_dto.dart';
import '../dtos/secret_kyc_question_response_dto.dart';
import '../dtos/wallet_rejection_inquiry_request_dto.dart';
import '../dtos/wallet_rejection_inquiry_response_dto.dart';
import '../dtos/wallet_rejection_update_request_dto.dart';
import '../repository/wallet_rejection_repository_impl.dart';

enum OnboardingStep {
  phoneInput,
  otpVerification,
  userDetails,
  registration,
  detailsVerification,
  selfieGuide,
  reviewSelfie,
  detailsConfirmation,
}

class WalletOnboardingProvider with ChangeNotifier, EasyLoadingUtil {
  OnboardingStep _currentStep = OnboardingStep.phoneInput;

  // controllers
  final phoneController = TextEditingController();
  final otpController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final idCardController = TextEditingController();
  final idCardIssueDateController = TextEditingController();
  final cnicNameController = TextEditingController();
  final fatherNameController = TextEditingController();
  final currentAddressController = TextEditingController();
  final permanentAddressController = TextEditingController();
  final provinceController = TextEditingController();
  final cityC = TextEditingController();

  OnboardingStep get currentStep => _currentStep;


  NetworkModel? get selectedNetwork => _selectedNetwork;

  NetworkModel? _selectedNetwork;

  String _otp = '';
  bool _isValid = false;

  String get otp => _otp;

  bool get isOtpComplete => _otp.length == 6;

  bool get isOtpValid => _isValid;

  List<NetworkModel> get networkList => _networkList;


  final List<NetworkModel> _networkList = [
    NetworkModel(name: 'Zong', imagePath: 'assets/wallet/zong_logo.svg'),
    NetworkModel(name: 'Jazz', imagePath: 'assets/wallet/jazz_logo.svg'),
    NetworkModel(name: 'Ufone', imagePath: 'assets/wallet/uphone_logo.svg'),
    NetworkModel(name: 'Telenor', imagePath: 'assets/wallet/telenor_logo.svg'),
  ];

  void detectAndSelectNetwork(String number) {
    if (number.length >= 4) {
      String prefix = number.substring(0, 4);

      if (RegExp(r'^(030[0-9]|032[0-9])$').hasMatch(prefix)) {
        setSelectedNetworkByName("Jazz");
      } else if (RegExp(r'^031[0-9]$').hasMatch(prefix)) {
        setSelectedNetworkByName("Zong");
      } else if (RegExp(r'^033[0-9]$').hasMatch(prefix)) {
        setSelectedNetworkByName("Ufone");
      } else if (RegExp(r'^034[0-9]$').hasMatch(prefix)) {
        setSelectedNetworkByName("Telenor");
      }
    }
  }

  void setSelectedNetworkByName(String networkName) {
    try {
      final network = _networkList.firstWhere(
            (n) => n.name.toLowerCase() == networkName.toLowerCase(),
      );
      setSelectedNetwork(network);
    } catch (e) {
      // no match found
    }
  }

  void nextStep() {
    int currentIndex = OnboardingStep.values.indexOf(_currentStep);
    if (currentIndex < OnboardingStep.values.length - 1) {
      _currentStep = OnboardingStep.values[currentIndex + 1];
      notifyListeners();
    }
  }

  void previousStep() {
    int currentIndex = OnboardingStep.values.indexOf(_currentStep);
    if (currentIndex > 0) {
      _currentStep = OnboardingStep.values[currentIndex - 1];
      notifyListeners();
    }
  }

  void goToStep(OnboardingStep step) {
    _currentStep = step;
    notifyListeners();
  }

  void setSelectedNetwork(NetworkModel networkModel) {
    print("networkModel ${networkModel.name}");
    _selectedNetwork = networkModel;
    print("_selectedNetwork ${_selectedNetwork?.name}");

    notifyListeners();
  }

  DateTime? _selectedDate;

  DateTime? get selectedDate => _selectedDate;

  void setDate(DateTime date) {
    _selectedDate = date;

    // Format to yyyy-MM-dd
    final formattedDate = DateFormat('yyyy-MM-dd').format(_selectedDate!);

    print("Formatted Date: $formattedDate");

    notifyListeners();
  }

  String get formattedDate {
    if (_selectedDate == null) return '';
    return "${_selectedDate!.day}-${_selectedDate!.month}-${_selectedDate!.year}";
  }

  void updateOtp(String value) {
    _otp = value;
    _isValid = otp.length == 5;
    notifyListeners();
  }

  List<String> _genderList = ['Not Selected', 'Male', 'Female', 'Other'];
  String? _selectedGender = "Not Selected";

  List<String> get genderList => _genderList;

  String? get selectedGender => _selectedGender;

  bool get genderNotSelected => _selectedGender == genderList.firstOrNull;

  void setSelectedGender(String? value) {
    _selectedGender = value;
    notifyListeners();
  }

  List<String> _provinceList = ['Not Selected', 'Punjab', 'Sindh', 'KPK'];
  String? _selectedProvince = "Not Selected";

  List<String> get provinceList => _provinceList;

  String? get selectedProvince => _selectedProvince;

  void setSelectedProvince(String? value) {
    _selectedProvince = value;
    notifyListeners();
  }

  String? motherNameAnswer;
  String? birthPlaceAnswer;

  void setMotherNameAnswer(String answer) {
    motherNameAnswer = answer;
    notifyListeners();
  }

  void setBirthPlaceAnswer(String answer) {
    birthPlaceAnswer = answer;
    notifyListeners();
  }

  File? _imageFileIdCardFrom;

  File? get imageFileIdCardFrom => _imageFileIdCardFrom;

  // Future<void> pickImage() async {
  //   final ImagePicker picker = ImagePicker();
  //   final XFile? picked = await picker.pickImage(source: ImageSource.gallery);
  //
  //   if (picked != null) {
  //     _imageFileIdCardFrom = File(picked.path);
  //     notifyListeners();
  //   }
  // }
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage({required bool isFront}) async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      final file = File(pickedFile.path);
      final base64String = base64Encode(await file.readAsBytes());

      final imageModel = ImageFieldModel(image: file, base64: base64String);

      if (isFront) {
        frontCNIC = imageModel;
      } else {
        backCNIC = imageModel;
      }

      notifyListeners();
    }
  }

  Contact? selectedContact;

  void selectContact(Contact contact) {
    phoneController.text =
        contact.phones.first.normalizedNumber.withoutCountryCode;
    selectedContact = contact;
    notifyListeners();
  }

  final dio = sL<DigitAPIDio>().dio;
  late final repoRegister = AccountRegistrationRepositoryImpl(
    AccountRegistrationApiService(dio),
  );
  final storage = sL<SecureStorage>();

  ImageFieldModel? frontCNIC;
  ImageFieldModel? backCNIC;
  ImageFieldModel? selfie;

    Future<void> setFrontCNICPic() async {}

  Future<void> setBackCNICPic() async {}

  CityItemDto? selectedCityItem;

  void selectCity(CityItemDto item) {
    selectedCityItem = item;
    notifyListeners();
  }

  Future<void> accountRegistration(BuildContext context) async {
    final request = () async {
      final requestModel = RegisterAccountRequestDto(
        cnicIssueDate: idCardIssueDateController.text,
        verficationToken: checkAccountResponse?.data.verificationToken ?? "",
        fatherName: fatherNameController.text,
        placeOfBirth: birthPlaceAnswer ?? "",
        mobileNumber: phoneController.text,
        motherName: motherNameAnswer ?? "",
        otp: otp,
        cityId: selectedCityItem?.cityId.toString() ?? "",
        customerName: nameController.text,
        cnicFrontPic: kDebugMode ? kDemoBase64Image : frontCNIC!.base64,
        cnicBackPic: kDebugMode ? kDemoBase64Image : backCNIC!.base64,
        selfie: kDebugMode ? kDemoBase64Image : selfieBase64 ?? "",
        permanentAddress: permanentAddressController.text,
        cnicNumber: idCardController.text,
        email: emailController.text,
      );

      print(requestModel);
      // return;
      final response = await repoRegister.registerAccount(requestModel);
      switch (response) {
        case Success<RegisterAccountResponseDto>():
          {
            /// we will show account status here
            showMessageDialog(
              context: context,
              message:
                  "Your submission has been received.\n"
                  "Status: Pending\n\n"
                  "Please check again later for an update.",
            ).then((value) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => WalletOnboading()),
              );
            });
          }
        case Failure<RegisterAccountResponseDto>():
          {
            final currentToken = checkAccountResponse!.data.verificationToken;
            final refreshedVerificationToken =
                response.resultFailureData?.getRefreshToken(
                  previousToken: currentToken,
                ) ??
                currentToken;
            checkAccountResponse = checkAccountResponse?.copyWith(
              data: checkAccountResponse!.data.copyWith(
                verificationToken: refreshedVerificationToken,
              ),
            );
            throw response;
          }
      }
    };
    try {
      await performRequest(request);
    } catch (e) {
      ErrorHandler.handleError(e);
    }
  }

  late final customerRepo = CustomerStatementRepositoryImpl(
    CustomerApiService(dio),
  );

    CheckAccountResponseDto? checkAccountResponse;

    Future<void> checkAccount(BuildContext context) async {
    try {
      await performRequest(() async {
        final res = await repoRegister.checkAccount(
          CheckAccountRequestDto(
            cnicIssuanceDate: idCardIssueDateController.text,
            cnicNo: idCardController.text,
            mobileNo: phoneController.text,
          ),
        );
        switch (res) {
          case Success<CheckAccountResponseDto>():
            {
              final accountStatusMessage = res.data.statusMessage;
              final accountStatusCode = res.data.statusCode;
              final accountStatus = AccountStatus.fromCode(accountStatusCode);
              if (accountStatus.isNewUser) {
                checkAccountResponse = res.data;
                nextStep();
              } else {
                showMessageDialog(
                  context: context,
                  message: accountStatusMessage,
                );
                // showAdaptiveDialog(
                //   context: context,
                //   builder: (context) => AlertDialog(
                //     content: Text(accountStatusMessage),
                //   ),
                // );
                // EasyLoading.showToast(accountStatusMessage);
              }
            }
          case Failure<CheckAccountResponseDto>():
            {
              throw res;
            }
        }
      });
    } catch (e, st) {
      print("ERRORz $e SSSz $st");
      ErrorHandler.handleError(e);
    }
  }

    Future<void> fetchAccount(BuildContext context) async {
    final request = () async {
      final Result<FetchAccountResponseDto> response = await repoRegister
          .fetchAccount(FetchAccountRequestDto(mobileNo: phoneController.text));
      switch (response) {
        case Success<FetchAccountResponseDto>():
          {
            final model = response.data;
            final accountStatusMessage = model.statusMessage;
            final accountStatusCode = model.statusCode;
            final accountStatus = AccountStatus.fromCode(accountStatusCode);
            if (accountStatus.userExist) {
              await _handelExistingUser(context, accountStatus);
            } else if (accountStatus.isNewUser) {
              nextStep();
              return;
            } else {
              showMessageDialog(
                context: context,
                message: accountStatusMessage,
              );
              // EasyLoading.showToast(accountStatusMessage);
            }
          }
        case Failure<FetchAccountResponseDto>():
          {
            throw response;
          }
      }
    };
    try {
      await performRequest(request);
    } catch (e, st) {
      log("error fetch account $e $st");
      ErrorHandler.handleError(e);
    }
  }

  Future<void> _handelExistingUser(
    BuildContext context,
    AccountStatus status,
  ) async {
    await _getUser();
    if (status.isPinRequired) {
      _navToPin(context);
      return;
    }
    await _finalizeOnboarding(context);
  }

  Future<void> _getUser() async {
    final Result<CustomerDetailResponseDto> userProfileRes = await customerRepo
        .getCustomerDetail(
          CustomerDetailRequestDto(mobileNo: phoneController.text),
        );
    switch (userProfileRes) {
      case Success<CustomerDetailResponseDto>():
        {
          final profile = UserProfileModel.fromJson(
            userProfileRes.data.toJson(),
          );
          sL<UserProfileRepository>().updateProfile(profile);
        }
      case Failure<CustomerDetailResponseDto>():
        {
          throw userProfileRes;
        }
    }
  }

  Future<void> _finalizeOnboarding(BuildContext context) async {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => WalletHomepage()),
    );
  }

  Future<void> _navToPin(BuildContext context) async {
        // _currentStep = OnboardingStep.createPin;
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (context) => CreatePinPage()));
  }

  String? _selfieBase64;

  void setUserSelfie(String base64String) {
    _selfieBase64 = base64String;
    notifyListeners();
  }

  String? get selfieBase64 => _selfieBase64;

  @override
  void dispose() {
    phoneController.dispose();
    otpController.dispose();
    nameController.dispose();
    emailController.dispose();
    idCardController.dispose();
    idCardIssueDateController.dispose();
    cnicNameController.dispose();
    fatherNameController.dispose();
    currentAddressController.dispose();
    permanentAddressController.dispose();
    provinceController.dispose();
    cityC.dispose();
    super.dispose();
  }
}
