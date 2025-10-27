import 'dart:convert';
import 'dart:io';
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/models/balance.dart';
import 'package:ezwage/global/navigations/navigate_bottom_bar.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/utils/custom_snackbar.dart';
import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/global/utils/logo_loader.dart';
import 'package:ezwage/helper/api_functions.dart';
import 'package:ezwage/ui/accounts/models/accounts_model.dart';
import 'package:ezwage/ui/authentication/model/login_model.dart';
import 'package:ezwage/ui/mutual_funds/controller/mutual_funds_controller.dart';
import 'package:ezwage/ui/mutual_funds/model/mutual_funds_model.dart';
import 'package:ezwage/ui/profile/model/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MutualFundsForm extends StatefulWidget {
  @override
  State<MutualFundsForm> createState() => _MutualFundsFormState();
}

class _MutualFundsFormState extends State<MutualFundsForm> {
  bool showMutualFundsDetails = false;
  bool allowTransaction = false;
  final mutualFundsFormController =
      List.generate(6, (i) => TextEditingController(), growable: true);
  List<FocusNode> focusNodes =
      List<FocusNode>.generate(7, (int index) => FocusNode());
  onFocusChange(int index, BuildContext context) async {
    if (focusNodes[index].hasFocus == true &&
        MutualFundsModel.fetchServiceCharges == false) {
      MutualFundsModel.fetchServiceCharges = true;
    } else if (focusNodes[index].hasFocus == false &&
        MutualFundsModel.fetchServiceCharges == true &&
        mutualFundsFormController[3].text != '') {
      MutualFundsModel.fetchServiceCharges = false;
      if (int.parse(mutualFundsFormController[3].text.replaceAll(',', '')) >
          99) {
        var json = {
          "amount": mutualFundsFormController[3].text.replaceAll(',', '')
        };
        Response response = await ApiFunctions().postRequest(
            'companies/' +
                preferences.get('company_id').toString() +
                '/transactionCharges',
            jsonEncode(json),
            context);
        var decodeJson = jsonDecode(response.body);

        mutualFundsFormController[4].text =
            decodeJson['results']['data']!.toString();
        if (double.parse(mutualFundsFormController[4].text) > 99)
          mutualFundsFormController[4].text = MutualFundsModel.decimalFormatter
              .format(double.parse(mutualFundsFormController[4].text))
              .toString();
        else
          mutualFundsFormController[4].text =
              double.parse(mutualFundsFormController[4].text) < 1
                  ? '0'
                  : double.parse(mutualFundsFormController[4].text)
                      .toStringAsFixed(2);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    MutualFundsModel.bankName = MutualFundsModel.bankNamesList[0];
    mutualFundsFormController[0].text = LoginModel.userName.toString();
    mutualFundsFormController[1].text = MutualFundsModel.bankNamesList[0];
    MutualFundsModel.dropdownItems = [];
    for (int i = 0; i < MutualFundsModel.bankNamesList.length; i++) {
      MutualFundsModel.dropdownItems.add(PopupMenuItem<String>(
          child: Text(
            MutualFundsModel.bankNamesList[i],
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          value: MutualFundsModel.bankNamesList[i]));
    }
    if (BalanceModel.currentbalance != null) {
      if (double.parse(BalanceModel.currentbalance!) > 99)
        MutualFundsModel.currentBalanceInAccount = MutualFundsModel.formatter
            .format(double.parse(BalanceModel.currentbalance!))
            .toString();
      else
        MutualFundsModel.currentBalanceInAccount =
            double.parse(BalanceModel.currentbalance.toString()) < 1
                ? '0'
                : double.parse(BalanceModel.currentbalance!).toStringAsFixed(0);
    }
    for (int index = 0; index < focusNodes.length; index++) {
      focusNodes[index].addListener(() {
        if (index == 3) onFocusChange(index, context);
      });
    }
    MutualFundsModel.selectedBankId = MutualFundsModel.bankIdsList[0];
    MutualFundsController.startTimer();
  }

  validateBankAccount(BuildContext context) async {
    var jsonBody = {
      "employee_id": ProfileModel.empid,
      "user_id": ProfileModel.uid,
      "amount":
          int.parse(mutualFundsFormController[3].text.replaceAll(',', '')),
      "company_id": ProfileModel.comid,
      "account_number": MutualFundsModel.accountNumber.toString().toUpperCase(),
      "bank_id": MutualFundsModel.selectedBankId,
    };
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return LogoLoader();
        });
    Response response = await ApiFunctions()
        .postRequest('mutualfund/plan/details', jsonEncode(jsonBody), context);
    if (response.statusCode == 200 &&
        MutualFundsModel.accountNumber.toString().toUpperCase() !=
            AccountsModel.accountNumber.toString().toUpperCase()) {
      var decodedJson = jsonDecode(response.body);
      if (decodedJson['results'] != '[]') {
        MutualFundsModel.accountTitle = decodedJson['results']['account_title'];
        MutualFundsModel.accountNumber =
            decodedJson['results']['account_number_to'];
        MutualFundsModel.mutualFundsDetailsDescList = [];
        MutualFundsModel.mutualFundsDetailsDescList.add('Multi Asset Fund');
        MutualFundsModel.mutualFundsDetailsDescList
            .add(mutualFundsFormController[1].text);
        MutualFundsModel.mutualFundsDetailsDescList
            .add(MutualFundsModel.accountTitle);
        MutualFundsModel.selectedAmount = mutualFundsFormController[3].text;
        allowTransaction = true;
        Navigator.pop(context);
        context.read<MutualFundsController>().showMutalFundsDetails(true);
        return null;
      }
    } else {
      Navigator.pop(context);
      CustomSnackBar(false).showInSnackBar('Bank Account Not Found!', context);
    }
  }

  final formKey = GlobalKey<FormState>();
  callPopMenuList(BuildContext context) {
    return <PopupMenuItem<String>>[...MutualFundsModel.dropdownItems];
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    showMutualFundsDetails =
        context.watch<MutualFundsController>().enableMutualFundsDetails;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(shortestSide < 600
            ? 80.sp
            : appLanguage == 'en'
                ? 60.sp
                : 65.sp),
        child: Column(
          children: [
            Stack(
              children: [
                GestureDetector(
                    onTap: () {
                      navigateToCustomNavigationBar(
                          context, MutualFundsModel.pageIndex!);
                    },
                    child: Align(
                      alignment: appLanguage == 'en'
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: Padding(
                        padding: appLanguage == 'en'
                            ? EdgeInsets.fromLTRB(shortestSide < 600 ? 20 : 30,
                                shortestSide < 600 ? 40 : 52, 0, 0)
                            : EdgeInsets.fromLTRB(
                                0, shortestSide < 600 ? 48 : 70, 20, 0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: backicon.withOpacity(0.2), width: 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: appLanguage == 'en'
                                ? EdgeInsets.only(
                                    left: shortestSide < 600 ? 10.0 : 15,
                                    top: 3,
                                    bottom: 3)
                                : EdgeInsets.only(
                                    right: 10.0, top: 3, bottom: 3),
                            child: shortestSide > 600
                                ? Icon(
                                    Icons.arrow_back_ios,
                                    color: backicon,
                                    size: 15.sp,
                                  )
                                : Icon(
                                    Icons.arrow_back_ios,
                                    color: backicon,
                                  ),
                          ),
                        ),
                      ),
                    )),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Text(
                      'Mutual Funds',
                      textScaleFactor: 1,
                      style: appLanguage == 'ur'
                          ? GoogleFonts.notoNastaliqUrdu(
                              color: blueColor,
                              fontWeight: FontWeight.w500,
                              fontSize: shortestSide > 600 ? 16.sp : 18,
                            )
                          : GoogleFonts.poppins(
                              color: blueColor,
                              fontWeight: FontWeight.w500,
                              fontSize: shortestSide > 600 ? 18.sp : 20),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(11, 15, 11, 0),
              child: Divider(),
            ),
          ],
        ),
      ),
      body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (showMutualFundsDetails == false)
                Form(
                  key: formKey,
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: mutualFundsFormController.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(35, 15, 35, 0),
                              child: TextFormField(
                                  onTap: () {
                                    if (index == 1) {
                                      showMenu(
                                        context: context,
                                        position: RelativeRect.fromLTRB(
                                            100, 100, 100, 100),
                                        items: [
                                          ...MutualFundsModel.dropdownItems
                                        ],
                                      ).then((value) {
                                        if (value != null) {
                                          mutualFundsFormController[index]
                                              .text = value.toString();

                                          for (int i = 0;
                                              i <
                                                  MutualFundsModel
                                                      .bankNamesList.length;
                                              i++) {
                                            if (value.toString().contains(
                                                MutualFundsModel
                                                    .bankNamesList[i])) {
                                              MutualFundsModel.selectedBankId =
                                                  MutualFundsModel
                                                      .bankIdsList[i];
                                              MutualFundsModel.bankName =
                                                  MutualFundsModel
                                                      .bankNamesList[i];
                                            }
                                          }
                                        }
                                      });
                                    }
                                  },
                                  controller: mutualFundsFormController[index],
                                  enableInteractiveSelection:
                                      index != 2 ? false : true,
                                  style: GoogleFonts.poppins(
                                      fontSize: 14 /
                                          MediaQuery.of(context)
                                              .textScaleFactor *
                                          1,
                                      fontWeight: FontWeight.w400),
                                  keyboardType: index == 3 && Platform.isAndroid
                                      ? TextInputType.number
                                      : TextInputType.text,
                                  inputFormatters: index == 3
                                      ? <TextInputFormatter>[
                                          FilteringTextInputFormatter.digitsOnly
                                        ]
                                      : <TextInputFormatter>[],
                                  focusNode: focusNodes[index],
                                  readOnly:
                                      index == 2 || index == 3 || index == 5
                                          ? false
                                          : true,
                                  onChanged: ((value) {
                                    if (index == 3) {
                                      formKey.currentState!.validate();
                                      if (mutualFundsFormController[index]
                                              .text !=
                                          '') {
                                        if (int.parse(
                                                mutualFundsFormController[index]
                                                    .text
                                                    .replaceAll(',', '')) >
                                            int.parse(MutualFundsModel
                                                .currentBalanceInAccount
                                                .replaceAll(',', ''))) {
                                          mutualFundsFormController[index]
                                                  .text =
                                              mutualFundsFormController[index]
                                                  .text
                                                  .substring(
                                                      0,
                                                      mutualFundsFormController[
                                                                  index]
                                                              .text
                                                              .length -
                                                          1);
                                        }
                                        if (double.parse(
                                                mutualFundsFormController[index]
                                                    .text) >
                                            99)
                                          mutualFundsFormController[index]
                                                  .text =
                                              MutualFundsModel.formatter
                                                  .format(double.parse(
                                                      mutualFundsFormController[
                                                              index]
                                                          .text))
                                                  .toString();
                                        else
                                          mutualFundsFormController[index]
                                              .text = double.parse(
                                                      mutualFundsFormController[
                                                              index]
                                                          .text) <
                                                  1
                                              ? '0'
                                              : double.parse(
                                                      mutualFundsFormController[
                                                              index]
                                                          .text)
                                                  .toStringAsFixed(0);
                                        mutualFundsFormController[index]
                                                .selection =
                                            TextSelection.fromPosition(
                                                TextPosition(
                                                    offset:
                                                        mutualFundsFormController[
                                                                index]
                                                            .text
                                                            .length));
                                      }
                                    } else if (index == 2) {
                                      formKey.currentState!.validate();
                                    }
                                  }),
                                  validator: (value) {
                                    if (index == 3) {
                                      if (mutualFundsFormController[index]
                                              .text ==
                                          '') {
                                        return 'Actual Amount must be at least 100!';
                                      } else if (int.parse(
                                              mutualFundsFormController[index]
                                                  .text
                                                  .replaceAll(',', '')) <
                                          100) {
                                        return 'Actual Amount must be at least 100!';
                                      }
                                    } else if (index == 2) {
                                      if (mutualFundsFormController[index]
                                              .text
                                              .length <
                                          1) {
                                        return 'Accout Number field is empty';
                                      }
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    errorStyle: TextStyle(
                                        color: Colors.red,
                                        fontSize: 12 /
                                            MediaQuery.of(context)
                                                .textScaleFactor *
                                            1),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 12.0, horizontal: 20),
                                    labelText:
                                        MutualFundsModel.labelsList[index],
                                    labelStyle: GoogleFonts.poppins(
                                      fontSize: 12 /
                                          MediaQuery.of(context)
                                              .textScaleFactor *
                                          1,
                                      color: blueColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                        color: blueColor,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                        color: blueColor,
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                        color: redColor,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                        color: redColor,
                                      ),
                                    ),
                                    suffixIcon: index == 1
                                        ? PopupMenuButton<String>(
                                            icon: Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: SvgPicture.asset(
                                                'assets/images/from_dropdown.svg',
                                              ),
                                            ),
                                            onSelected: (String value) {
                                              mutualFundsFormController[index]
                                                  .text = value;
                                              for (int i = 0;
                                                  i <
                                                      MutualFundsModel
                                                          .bankNamesList.length;
                                                  i++) {
                                                if (value.contains(
                                                    MutualFundsModel
                                                        .bankNamesList[i])) {
                                                  MutualFundsModel
                                                          .selectedBankId =
                                                      MutualFundsModel
                                                          .bankIdsList[i];
                                                  MutualFundsModel.bankName =
                                                      MutualFundsModel
                                                          .bankNamesList[i];
                                                }
                                              }
                                            },
                                            itemBuilder:
                                                (BuildContext context) {
                                              return <PopupMenuItem<String>>[
                                                ...MutualFundsModel
                                                    .dropdownItems
                                              ];
                                            },
                                          )
                                        : null,
                                  )),
                            ),
                            if (index == 3)
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 40.0,
                                  top: 5,
                                ),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: RichText(
                                      textScaleFactor: 1,
                                      text: TextSpan(
                                          text: 'Available Balance: ',
                                          style: GoogleFonts.poppins(
                                              fontSize: 10,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400),
                                          children: [
                                            TextSpan(
                                              text: MutualFundsModel
                                                  .currentBalanceInAccount,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 10,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ])),
                                ),
                              ),
                          ],
                        );
                      }),
                ),
              if (showMutualFundsDetails == true)
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    ListView.builder(
                        itemCount:
                            MutualFundsModel.mutualFundsDetailsNamesList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 5,
                                    child: Align(
                                      alignment: appLanguage == 'en'
                                          ? Alignment.centerLeft
                                          : Alignment.centerRight,
                                      child: Text(
                                        MutualFundsModel
                                            .mutualFundsDetailsNamesList[index],
                                        textScaleFactor: 1,
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: Color(0xff3E3E3E)),
                                      ),
                                    )),
                                Expanded(
                                    flex: 5,
                                    child: Align(
                                      alignment: appLanguage == 'en'
                                          ? Alignment.centerLeft
                                          : Alignment.centerRight,
                                      child: Text(
                                        MutualFundsModel
                                            .mutualFundsDetailsDescList[index]
                                            .toString()
                                            .trimRight(),
                                        textScaleFactor: 1,
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                            color: Color(0xff3E3E3E)),
                                      ),
                                    )),
                              ],
                            ),
                          );
                        }),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 124,
                      height: 35,
                      child: ElevatedButton(
                          onPressed: () {
                            navigateToCustomNavigationBar(context, 2);
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.white,
                            side: BorderSide(
                                color: Color.fromRGBO(128, 128, 128, 0.5)),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Cancel',
                            textScaleFactor: 1,
                            style: GoogleFonts.openSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(128, 128, 128, 0.5)),
                          )),
                    ),
                    SizedBox(
                      width: 37,
                    ),
                    SizedBox(
                      width: 124,
                      height: 35,
                      child: ElevatedButton(
                          onPressed: () {
                            FocusScope.of(context).unfocus();
                            if (showMutualFundsDetails == false) {
                              if (formKey.currentState!.validate() == true) {
                                MutualFundsModel.accountNumber =
                                    mutualFundsFormController[2]
                                        .text
                                        .toString()
                                        .toUpperCase();
                                validateBankAccount(context);
                              }
                            } else if (showMutualFundsDetails == true &&
                                allowTransaction == true) {
                              MutualFundsController.validtrans(context);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Color(0xff00A2FF),
                            side: BorderSide(color: Color(0xff00A2FF)),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Proceed',
                            textScaleFactor: 1,
                            style: GoogleFonts.openSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 37,
              ),
            ],
          ))),
    );
  }
}
