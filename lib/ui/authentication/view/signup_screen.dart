import 'dart:convert';
import 'dart:io';
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/utils/custom_snackbar.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/authentication/controller/authscreen_tab_controller.dart';
import 'package:ezwage/ui/authentication/controller/correct_phone_field.dart';
import 'package:ezwage/ui/authentication/controller/login_provider.dart';
import 'package:ezwage/ui/authentication/controller/terms_conditions_controller.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:ezwage/ui/authentication/model/signup_model.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _signupTextController =
      List.generate(7, (i) => TextEditingController(), growable: true);
  final _signupTextPasswordController =
      List.generate(2, (i) => TextEditingController(), growable: true);
  List<FocusNode> _focusNodes =
      List<FocusNode>.generate(7, (int index) => FocusNode());
  final _textFieldLists = [
    'Phone_Number',
    'CNIC_Number',
    'Gender',
    'First_Name',
    // 'Last_Name',
    'Email_Address',
    'Company_Name',
    'Salary'
  ];
  final _hintLists = [
    'Enter_your_phone_number',
    'CNIC_Number_without_dashes',
    'Gender',
    'First_Name',
    // 'Last_Name',
    'Email_Address',
    'Company_Name',
    'Salary'
  ];
  // final _genderList = ['Male', 'Female'];
  final _createPasswordFieldLists = [
    'New_Password',
    'Confirm_New_Password',
  ];
  final _passwordHintLists = [
    'Enter_your_password',
    'Confirm_your_password',
  ];
  bool? checkBoxValue;
  final String _currentSelectedGender = 'Male';

  _onFocusChange(int index) {
    if (_focusNodes[index].hasFocus == false && index == 0) {
      _signupTextController[index].text =
          correctPhoneNumber(_signupTextController[index].text);
    }
  }

  var keyboardPlatform;
  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 7; i++) {
      _focusNodes[i].addListener(() {
        _onFocusChange(i);
      });
    }
    if (Platform.isIOS == true) {
      keyboardPlatform =
          TextInputType.numberWithOptions(signed: true, decimal: true);
    } else {
      keyboardPlatform = TextInputType.number;
    }
    SignUpModel.gender = _currentSelectedGender;
  }

  _autoFillFields() async {
    String _selectedPhoneNumber =
        correctPhoneNumber(_signupTextController[0].text);
    if (appLanguage == 'ur') {
      _selectedPhoneNumber =
          _selectedPhoneNumber[_selectedPhoneNumber.length - 1] +
              _selectedPhoneNumber.substring(
                  0, _selectedPhoneNumber.length - 1);
    }
    Response response = await ApiFunctions().getRequest(
        "employees/phone/" +
            _selectedPhoneNumber +
            "/cnic/" +
            _signupTextController[1].text,
        context);
    if (response.statusCode == 200) {
      var decodedJson = jsonDecode(response.body);
      if (decodedJson['message'] == 'OK') {
        context
            .read<LoginProvider>()
            .setValidatorIcons(true, "assets/images/tick.svg");
        _signupTextController[2].text =
            decodedJson["results"]['data'][0]["gender"];
        _signupTextController[3].text =
            decodedJson['results']['data'][0]['name'];
        _signupTextController[4].text =
            decodedJson['results']['data'][0]['email'];
        _signupTextController[5].text =
            decodedJson['results']['data'][0]['company'];
        _signupTextController[6].text =
            decodedJson['results']['data'][0]['salary'];
        SignUpModel.companyid = decodedJson["results"]['data'][0]["company_id"];
        SignUpModel.companyname = decodedJson["results"]['data'][0]["company"];
        SignUpModel.salary = decodedJson["results"]['data'][0]["salary"];
        SignUpModel.name = decodedJson["results"]['data'][0]["name"];
        SignUpModel.email = decodedJson["results"]['data'][0]["email"];
        SignUpModel.gender = decodedJson["results"]['data'][0]["gender"];
        SignUpModel.phone = _selectedPhoneNumber;
        SignUpModel.cnic = _signupTextController[1].text;
        if (_signupTextController[3].text.length > 1 && checkBoxValue == true) {
          context.read<LoginProvider>().setSignUpNext(true);
        } else {
          context.read<LoginProvider>().setSignUpNext(false);
        }
      } else {
        for (int i = 3; i < 7; i++) _signupTextController[i].text = '';
        context.read<LoginProvider>().setSignUpNext(false);
        context
            .read<LoginProvider>()
            .setValidatorIcons(true, "assets/images/transaction_unsuccess.svg");
        // CustomSnackBar().showInSnackBar(
        //     translateText('Employee_not_found'),
        //     context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    checkBoxValue = context.watch<LoginProvider>().productAgreement;
    bool _processLogin = context.watch<LoginProvider>().signUpProcsess;
    String signUpCurrentScreen =
        context.watch<LoginProvider>().signUpCurrentScreen;
    var hidePasswordFromField =
        context.watch<LoginProvider>().hideSignUpPassword;
    bool _allowNextButton = context.watch<LoginProvider>().allowSignUpNext;
    bool _allowSignUpButton = context.watch<LoginProvider>().allowSignUpButton;
    String? _validatorIconType = context.watch<LoginProvider>().validatorIcon;
    bool _allowValidator = context.watch<LoginProvider>().showValidatorIcons;
    final mediaQuery = MediaQuery.of(context).textScaleFactor;
    return SingleChildScrollView(
      child: Column(
        children: [
          if (signUpCurrentScreen == 'Next')
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView.builder(
                  itemCount: _textFieldLists.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  8,
                                  shortestSide > 600 ? 4.sp : 8,
                                  8,
                                  shortestSide > 600 ? 5.sp : 8),
                              child: Align(
                                alignment: appLanguage == 'en'
                                    ? Alignment.centerLeft
                                    : Alignment.centerRight,
                                child: Text(
                                  translateText(_textFieldLists[index]),
                                  textScaleFactor: 1,
                                  style: appLanguage == 'en'
                                      ? GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize:
                                              shortestSide > 600 ? 14.sp : 16)
                                      : GoogleFonts.notoNastaliqUrdu(
                                          fontWeight: FontWeight.w500,
                                          fontSize:
                                              shortestSide > 600 ? 12.sp : 14),
                                ),
                              ),
                            ),
                            if (_allowValidator == true && index < 2)
                              SvgPicture.asset(_validatorIconType.toString()),
                          ],
                        ),
                        // if(index != 2)
                        Padding(
                          padding: const EdgeInsets.fromLTRB(3, 0, 3, 5),
                          child: Neumorphic(
                            // margin:
                            //     EdgeInsets.only(left: 1, right: 0, top: 1, bottom: 0),
                            style: NeumorphicStyle(
                                color: const Color(0xffF6F6F6),
                                depth: NeumorphicTheme.embossDepth(context),
                                intensity: 0.6,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(
                                        shortestSide > 600 ? 5.sp : 10))),
                            child: shortestSide > 600
                                ? SizedBox(
                                    height: 40.sp,
                                    child: Center(
                                      child: TextFormField(
                                        enableInteractiveSelection: false,
                                        controller:
                                            _signupTextController[index],
                                        style: GoogleFonts.poppins(
                                          fontSize:
                                              shortestSide > 600 ? 12.sp : 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        onChanged: (value) {
                                          if (_signupTextController[0]
                                                      .text
                                                      .length >
                                                  10 &&
                                              _signupTextController[1]
                                                      .text
                                                      .length ==
                                                  13) {
                                            _autoFillFields();
                                          } else {
                                            for (int i = 3; i < 8; i++)
                                              _signupTextController[i].text =
                                                  '';
                                            context
                                                .read<LoginProvider>()
                                                .setSignUpNext(false);
                                            context
                                                .read<LoginProvider>()
                                                .setValidatorIcons(false,
                                                    "assets/images/transaction_unsuccess.svg");
                                          }
                                        },
                                        maxLength: index == 1 ? 13 : 20,
                                        readOnly: index > 1 ? true : false,
                                        focusNode: _focusNodes[index],
                                        inputFormatters: index < 2
                                            ? <TextInputFormatter>[
                                                FilteringTextInputFormatter
                                                    .digitsOnly
                                              ]
                                            : <TextInputFormatter>[],
                                        keyboardType: index < 2
                                            ? keyboardPlatform
                                            : TextInputType.text,
                                        textInputAction: index == 0
                                            ? TextInputAction.next
                                            : TextInputAction.done,
                                        decoration: InputDecoration(
                                          counterText: '',
                                          hintText:
                                              translateText(_hintLists[index]),
                                          contentPadding:
                                              const EdgeInsets.all(20.0),
                                          hintStyle: appLanguage == 'en'
                                              ? GoogleFonts.poppins(
                                                  fontSize: shortestSide > 600
                                                      ? 12.sp / mediaQuery
                                                      : 12 / mediaQuery,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      const Color(0xff97ADB6))
                                              : GoogleFonts.notoNastaliqUrdu(
                                                  fontSize: shortestSide > 600
                                                      ? 10.sp / mediaQuery
                                                      : 10 / mediaQuery,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      const Color(0xff97ADB6)),
                                          filled: true,
                                          fillColor: const Color(0xffF6F6F6),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: const BorderSide(
                                                  color: Color(0xffF6F6F6))),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: const BorderSide(
                                                  color: Color(0xffF6F6F6))),
                                        ),
                                      ),
                                    ),
                                  )
                                : TextFormField(
                                    enableInteractiveSelection: false,
                                    controller: _signupTextController[index],
                                    style: GoogleFonts.poppins(
                                      fontSize: shortestSide > 600
                                          ? 12.sp / mediaQuery
                                          : 12 / mediaQuery,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    onChanged: (value) {
                                      if (_signupTextController[0].text.length >
                                              10 &&
                                          _signupTextController[1]
                                                  .text
                                                  .length ==
                                              13) {
                                        _autoFillFields();
                                      } else {
                                        for (int i = 3; i < 7; i++)
                                          _signupTextController[i].text = '';
                                        context
                                            .read<LoginProvider>()
                                            .setSignUpNext(false);
                                        context
                                            .read<LoginProvider>()
                                            .setValidatorIcons(false,
                                                "assets/images/transaction_unsuccess.svg");
                                      }
                                    },
                                    maxLength: index == 1 ? 13 : 20,
                                    readOnly: index > 1 ? true : false,
                                    focusNode: _focusNodes[index],
                                    inputFormatters: index < 2
                                        ? <TextInputFormatter>[
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ]
                                        : <TextInputFormatter>[],
                                    keyboardType: index < 2
                                        ? keyboardPlatform
                                        : TextInputType.text,
                                    textInputAction: index == 0
                                        ? TextInputAction.next
                                        : TextInputAction.done,
                                    decoration: InputDecoration(
                                      counterText: '',
                                      hintText:
                                          translateText(_hintLists[index]),
                                      contentPadding:
                                          const EdgeInsets.all(20.0),
                                      hintStyle: appLanguage == 'en'
                                          ? GoogleFonts.poppins(
                                              fontSize: shortestSide > 600
                                                  ? 12.sp / mediaQuery
                                                  : 12 / mediaQuery,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xff97ADB6))
                                          : GoogleFonts.notoNastaliqUrdu(
                                              fontSize: shortestSide > 600
                                                  ? 10.sp / mediaQuery
                                                  : 10 / mediaQuery,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xff97ADB6)),
                                      filled: true,
                                      fillColor: const Color(0xffF6F6F6),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: const BorderSide(
                                              color: Color(0xffF6F6F6))),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: const BorderSide(
                                              color: Color(0xffF6F6F6))),
                                    ),
                                  ),
                          ),
                        ),
                        // if (index == 2)
                        //   Padding(
                        //       padding: const EdgeInsets.fromLTRB(3, 0, 3, 5),
                        //       child: shortestSide > 600
                        //           ? Neumorphic(
                        //               style: NeumorphicStyle(
                        //                   color: Color(0xffF6F6F6),
                        //                   depth: NeumorphicTheme.embossDepth(
                        //                       context),
                        //                   intensity: 0.6,
                        //                   boxShape:
                        //                       NeumorphicBoxShape.roundRect(
                        //                           BorderRadius.circular(
                        //                               shortestSide > 600
                        //                                   ? 5.sp
                        //                                   : 10))),
                        //               child: SizedBox(
                        //                 height: 40.sp,
                        //                 child: Center(
                        //                   child:
                        //                       DropdownButtonFormField<String>(
                        //                     iconSize: 20.sp,
                        //                     decoration: InputDecoration(
                        //                       filled: true,
                        //                       fillColor:
                        //                           const Color(0xffF6F6F6),
                        //                       focusedBorder: OutlineInputBorder(
                        //                           borderRadius:
                        //                               BorderRadius.circular(
                        //                                   10.0),
                        //                           borderSide: const BorderSide(
                        //                               color:
                        //                                   Color(0xffF6F6F6))),
                        //                       enabledBorder: OutlineInputBorder(
                        //                           borderRadius:
                        //                               BorderRadius.circular(
                        //                                   10.0),
                        //                           borderSide: const BorderSide(
                        //                               color:
                        //                                   Color(0xffF6F6F6))),
                        //                     ),
                        //                     dropdownColor: Colors.white,
                        //                     isExpanded: false,
                        //                     items: _genderList.map(
                        //                       (value) {
                        //                         return DropdownMenuItem(
                        //                           value: value,
                        //                           child: Text(
                        //                             translateText(value),
                        //                             style: appLanguage == 'en'
                        //                                 ? GoogleFonts.poppins(
                        //                                     fontSize:
                        //                                         shortestSide >
                        //                                                 600
                        //                                             ? 12.sp /
                        //                                                 mediaQuery
                        //                                             : 12 /
                        //                                                 mediaQuery,
                        //                                     height: appLanguage ==
                        //                                             'en'
                        //                                         ? 0
                        //                                         : 1,
                        //                                     fontWeight:
                        //                                         FontWeight.w400,
                        //                                     color: Colors.black)
                        //                                 : GoogleFonts.notoNastaliqUrdu(
                        //                                     fontSize: shortestSide >
                        //                                             600
                        //                                         ? 10.sp /
                        //                                             mediaQuery
                        //                                         : 10 /
                        //                                             mediaQuery,
                        //                                     height:
                        //                                         appLanguage == 'en'
                        //                                             ? 0
                        //                                             : 1,
                        //                                     fontWeight:
                        //                                         FontWeight.w400,
                        //                                     color: Colors.black),
                        //                             textScaleFactor: 1,
                        //                           ),
                        //                         );
                        //                       },
                        //                     ).toList(),
                        //                     value: _currentSelectedGender,
                        //                     style: appLanguage == 'en'
                        //                         ? GoogleFonts.poppins(
                        //                             fontSize: shortestSide > 600
                        //                                 ? 12.sp / mediaQuery
                        //                                 : 12 / mediaQuery,
                        //                             fontWeight: FontWeight.w400,
                        //                           )
                        //                         : GoogleFonts.notoNastaliqUrdu(
                        //                             fontSize: shortestSide > 600
                        //                                 ? 10.sp / mediaQuery
                        //                                 : 10 / mediaQuery,
                        //                             fontWeight: FontWeight.w400,
                        //                           ),
                        //                     onChanged: (value) {
                        //                       _signupTextController[index]
                        //                           .text = value.toString();
                        //                       SignUpModel.gender = value;
                        //                     },
                        //                   ),
                        //                 ),
                        //               ),
                        //             )
                        //           : Neumorphic(
                        //               style: NeumorphicStyle(
                        //                   color: const Color.fromARGB(
                        //                       255, 168, 166, 166),
                        //                   depth: NeumorphicTheme.embossDepth(
                        //                       context),
                        //                   intensity: 0.6,
                        //                   boxShape:
                        //                       NeumorphicBoxShape.roundRect(
                        //                           BorderRadius.circular(10))),
                        //               child: DropdownButtonFormField<String>(
                        //                 decoration: InputDecoration(
                        //                   filled: true,
                        //                   fillColor: const Color(0xffF6F6F6),
                        //                   focusedBorder: OutlineInputBorder(
                        //                       borderRadius:
                        //                           BorderRadius.circular(10.0),
                        //                       borderSide: const BorderSide(
                        //                           color: Color(0xffF6F6F6))),
                        //                   enabledBorder: OutlineInputBorder(
                        //                       borderRadius:
                        //                           BorderRadius.circular(10.0),
                        //                       borderSide: const BorderSide(
                        //                           color: Color(0xffF6F6F6))),
                        //                 ),
                        //                 dropdownColor: Colors.white,
                        //                 isExpanded: false,
                        //                 items: _genderList.map(
                        //                   (value) {
                        //                     return DropdownMenuItem(
                        //                       value: value,
                        //                       child: Text(
                        //                         translateText(value),
                        //                         style: appLanguage == 'en'
                        //                             ? GoogleFonts.poppins(
                        //                                 fontSize: 12,
                        //                                 height: appLanguage ==
                        //                                         'en'
                        //                                     ? 0
                        //                                     : 1,
                        //                                 fontWeight: FontWeight
                        //                                     .w400,
                        //                                 color: Colors.black)
                        //                             : GoogleFonts
                        //                                 .notoNastaliqUrdu(
                        //                                     fontSize: 10,
                        //                                     height:
                        //                                         appLanguage ==
                        //                                                 'en'
                        //                                             ? 0
                        //                                             : 1,
                        //                                     fontWeight:
                        //                                         FontWeight.w400,
                        //                                     color:
                        //                                         Colors.black),
                        //                         textScaleFactor: 1,
                        //                       ),
                        //                     );
                        //                   },
                        //                 ).toList(),
                        //                 value: _currentSelectedGender,
                        //                 style: appLanguage == 'en'
                        //                     ? GoogleFonts.poppins(
                        //                         fontSize: 12 / mediaQuery,
                        //                         fontWeight: FontWeight.w400,
                        //                       )
                        //                     : GoogleFonts.notoNastaliqUrdu(
                        //                         fontSize: 10 / mediaQuery,
                        //                         fontWeight: FontWeight.w400,
                        //                       ),
                        //                 onChanged: (value) {
                        //                   _signupTextController[index].text =
                        //                       value.toString();
                        //                   SignUpModel.gender = value;
                        //                 },
                        //               ),
                        //             )),
                      ],
                    );
                  }),
            ),
          if (signUpCurrentScreen == 'Sign_Up')
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView.builder(
                  itemCount: _createPasswordFieldLists.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: appLanguage == 'en'
                                ? Alignment.centerLeft
                                : Alignment.centerRight,
                            child: Text(
                              translateText(_createPasswordFieldLists[index]),
                              style: appLanguage == 'en'
                                  ? GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: shortestSide > 600 ? 14.sp : 16)
                                  : GoogleFonts.notoNastaliqUrdu(
                                      fontWeight: FontWeight.w500,
                                      fontSize:
                                          shortestSide > 600 ? 12.sp : 14),
                              textScaleFactor: 1,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(3, 0, 3, 5),
                          child: Neumorphic(
                            // margin:
                            //     EdgeInsets.only(left: 1, right: 0, top: 1, bottom: 0),
                            style: NeumorphicStyle(
                                color: const Color(0xffF6F6F6),
                                depth: NeumorphicTheme.embossDepth(context),
                                intensity: 0.6,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(10))),

                            child: shortestSide > 600
                                ? SizedBox(
                                    height: 40.sp,
                                    child: Center(
                                      child: TextFormField(
                                        enableInteractiveSelection: false,
                                        controller:
                                            _signupTextPasswordController[
                                                index],
                                        style: GoogleFonts.poppins(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        maxLength: 15,
                                        obscureText:
                                            hidePasswordFromField[index],
                                        onChanged: (value) {
                                          if (_signupTextPasswordController[0]
                                                      .text
                                                      .length >
                                                  0 &&
                                              _signupTextPasswordController[1]
                                                      .text
                                                      .length >
                                                  0) {
                                            context
                                                .read<LoginProvider>()
                                                .setSignUpButtonStatus(true);
                                          } else {
                                            context
                                                .read<LoginProvider>()
                                                .setSignUpButtonStatus(false);
                                          }
                                        },
                                        decoration: InputDecoration(
                                          counterText: '',
                                          suffixIcon: Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: IconButton(
                                              onPressed: () {
                                                if (hidePasswordFromField[
                                                        index] ==
                                                    false) {
                                                  context
                                                      .read<LoginProvider>()
                                                      .setSignUpPasswordStatus(
                                                          true, index);
                                                } else {
                                                  context
                                                      .read<LoginProvider>()
                                                      .setSignUpPasswordStatus(
                                                          false, index);
                                                }
                                              },
                                              icon: Icon(
                                                hidePasswordFromField[index] ==
                                                        true
                                                    ? Icons.visibility
                                                    : Icons.visibility_off,
                                                size: 12.sp,
                                              ),
                                            ),
                                          ),
                                          hintText: translateText(
                                              _passwordHintLists[index]),
                                          contentPadding:
                                              const EdgeInsets.all(20.0),
                                          hintStyle: appLanguage == 'en'
                                              ? GoogleFonts.poppins(
                                                  fontSize: 12.sp / mediaQuery,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      const Color(0xff97ADB6))
                                              : GoogleFonts.notoNastaliqUrdu(
                                                  fontSize: 10.sp / mediaQuery,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      const Color(0xff97ADB6)),
                                          filled: true,
                                          fillColor: const Color(0xffF6F6F6),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: const BorderSide(
                                                  color: Color(0xffF6F6F6))),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: const BorderSide(
                                                  color: Color(0xffF6F6F6))),
                                        ),
                                      ),
                                    ),
                                  )
                                : TextFormField(
                                    enableInteractiveSelection: false,
                                    controller:
                                        _signupTextPasswordController[index],
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    maxLength: 15,
                                    obscureText: hidePasswordFromField[index],
                                    onChanged: (value) {
                                      if (_signupTextPasswordController[0]
                                                  .text
                                                  .length >
                                              0 &&
                                          _signupTextPasswordController[1]
                                                  .text
                                                  .length >
                                              0) {
                                        context
                                            .read<LoginProvider>()
                                            .setSignUpButtonStatus(true);
                                      } else {
                                        context
                                            .read<LoginProvider>()
                                            .setSignUpButtonStatus(false);
                                      }
                                    },
                                    decoration: InputDecoration(
                                      counterText: '',
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          if (hidePasswordFromField[index] ==
                                              false) {
                                            context
                                                .read<LoginProvider>()
                                                .setSignUpPasswordStatus(
                                                    true, index);
                                          } else {
                                            context
                                                .read<LoginProvider>()
                                                .setSignUpPasswordStatus(
                                                    false, index);
                                          }
                                        },
                                        icon: Icon(
                                            hidePasswordFromField[index] == true
                                                ? Icons.visibility
                                                : Icons.visibility_off),
                                      ),
                                      hintText: translateText(
                                          _passwordHintLists[index]),
                                      contentPadding:
                                          const EdgeInsets.all(20.0),
                                      hintStyle: appLanguage == 'en'
                                          ? GoogleFonts.poppins(
                                              fontSize: 12 / mediaQuery,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xff97ADB6))
                                          : GoogleFonts.notoNastaliqUrdu(
                                              fontSize: 10 / mediaQuery,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xff97ADB6)),
                                      filled: true,
                                      fillColor: const Color(0xffF6F6F6),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: const BorderSide(
                                              color: Color(0xffF6F6F6))),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: const BorderSide(
                                              color: Color(0xffF6F6F6))),
                                    ),
                                  ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          if (signUpCurrentScreen == 'Sign_Up')
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                translateText('Password_Characters_Limit'),
                textScaleFactor: 1,
                // textAlign: TextAlign.center,
                style: appLanguage == 'en'
                    ? GoogleFonts.poppins(
                        fontSize: shortestSide > 600 ? 7.sp : 12,
                        fontWeight: FontWeight.w500)
                    : GoogleFonts.notoNastaliqUrdu(
                        fontSize: shortestSide > 600 ? 5.sp : 10,
                        fontWeight: FontWeight.w500),
              ),
            ),
          if (signUpCurrentScreen == 'Next')
            Padding(
              padding: EdgeInsets.only(
                  left: 10.0, top: shortestSide > 600 ? 8.sp : 0),
              child: Row(
                children: [
                  Transform.scale(
                    scale: shortestSide > 600 ? 0.7.sp : 1,
                    child: Checkbox(
                        value: checkBoxValue,
                        side: const BorderSide(
                          color: Color(0xffCECDCD),
                        ),
                        shape: const RoundedRectangleBorder(),
                        activeColor: Color.alphaBlend(
                            Color(0xff00A2FF), Color(0xff0075B9)),
                        onChanged: (bool? value) {
                          context
                              .read<LoginProvider>()
                              .setAgreementStatus(value!);
                          if (_signupTextController[3].text.length > 1 &&
                              value == true) {
                            context.read<LoginProvider>().setSignUpNext(true);
                          } else {
                            context.read<LoginProvider>().setSignUpNext(false);
                          }
                        }),
                  ),
                  GestureDetector(
                    onTap: () {
                      openTermsConditionsDocument();
                    },
                    child: Text(
                      translateText('I_agree_to_the_terms_&_conditions*'),
                      textScaleFactor: 1,
                      style: appLanguage == 'en'
                          ? GoogleFonts.poppins(
                              fontSize: shortestSide > 600 ? 12.sp : 12,
                              fontWeight: FontWeight.w400,
                              color: blueColor,
                            )
                          : GoogleFonts.notoNastaliqUrdu(
                              fontSize: shortestSide > 600 ? 10.sp : 10,
                              fontWeight: FontWeight.w400,
                              color: blueColor,
                            ),
                    ),
                  ),
                ],
              ),
            ),
          Padding(
            padding:
                EdgeInsets.fromLTRB(20, shortestSide > 600 ? 10.sp : 10, 20, 0),
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(
                  height: shortestSide > 600 ? 30.sp : 55,
                  width: double.infinity),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: signUpCurrentScreen == 'Next'
                        ? _allowNextButton == true
                            ? Color(0xffDB1695)
                            : Colors.grey
                        : _allowSignUpButton == true
                            ? Color(0xffDB1695)
                            : Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    if (signUpCurrentScreen == 'Next') {
                      if (_allowNextButton == true) {
                        context
                            .read<LoginProvider>()
                            .changeScreenType('Enter your password');
                        context
                            .read<LoginProvider>()
                            .setSignUpScreen('Sign_Up');
                        context.read<LoginProvider>().setValidatorIcons(
                            false, "assets/images/transaction_unsuccess.svg");
                        FocusScope.of(context).unfocus();
                      }
                    } else {
                      if (_allowNextButton == true) {
                        if (_signupTextPasswordController[0].text ==
                            _signupTextPasswordController[1].text) {
                          if (RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&.#])[A-Za-z\d@$!%*?&.#]{8,20}$")
                                  .hasMatch(
                                      _signupTextPasswordController[1].text) ==
                              true) {
                            SignUpModel.password =
                                _signupTextPasswordController[1].text;
                            context
                                .read<LoginProvider>()
                                .setSignUpProcess(true);
                            context
                                .read<LoginProvider>()
                                .createUserWithApi(context);
                          } else {
                            CustomSnackBar(false).showInSnackBar(
                                translateText(
                                    'Password_at_least_8_characters_with_1_Capital_Letter_and_1_Number'),
                                context);
                          }
                        } else {
                          CustomSnackBar(false).showInSnackBar(
                              translateText("Both_Passowrds_don't_match"),
                              context);
                        }
                      }
                    }
                  },
                  child: _processLogin == false
                      ? Text(
                          translateText(signUpCurrentScreen),
                          textScaleFactor: 1,
                          style: appLanguage == 'en'
                              ? GoogleFonts.poppins(
                                  fontSize: shortestSide > 600 ? 16.sp : 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)
                              : GoogleFonts.notoNastaliqUrdu(
                                  fontSize: shortestSide > 600 ? 12.sp : 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                        )
                      : const SpinKitCircle(
                          color: Colors.white,
                          size: 20.0,
                        )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                translateText('Already_have_an_account?_Login'),
                textScaleFactor: 1,
                style: appLanguage == 'en'
                    ? GoogleFonts.poppins(
                        fontSize: shortestSide > 600 ? 12.sp : 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6F6F6F))
                    : GoogleFonts.notoNastaliqUrdu(
                        fontSize: shortestSide > 600 ? 11.sp : 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6F6F6F)),
              ),
              GestureDetector(
                onTap: () {
                  tabController.animateTo(0);
                },
                child: Text(
                  " " + translateText('Login'),
                  textScaleFactor: 1,
                  style: appLanguage == 'en'
                      ? GoogleFonts.poppins(
                          fontSize: shortestSide > 600 ? 12.sp : 13,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff00A2FF))
                      : GoogleFonts.notoNastaliqUrdu(
                          fontSize: shortestSide > 600 ? 10.sp : 11,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff00A2FF)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: shortestSide < 600 ? 250 : 450,
          ),
        ],
      ),
    );
  }
}

// Container(
//  decoration: BoxDecoration(
//  color: Colors.white,
//  border: Border(
//   top: BorderSide(color: Colors.red),
//   left: BorderSide(color: Colors.red),
//   ),
//  ),
//  child: TextFormField(
//   decoration: InputDecoration(
//    labelText: 'Email',
//    border: InputBorder.none,
//   ),
//  ),
// ),