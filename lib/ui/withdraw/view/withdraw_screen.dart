import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/navigations/navigate_bottom_bar.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/utils/date_util.dart';
import 'package:ezwage/global/utils/get_month.dart';
import 'package:ezwage/global/views/bottomsheets/bottom_sheet_with_navigation_screen.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/withdraw/view/withdraw_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ezwage/global/models/balance.dart';
import 'package:ezwage/ui/profile/model/profile_model.dart';
import 'package:intl/intl.dart';
import 'package:ezwage/ui/authentication/model/login_model.dart';

class WithdrawScreen extends StatefulWidget {
  const WithdrawScreen({Key? key}) : super(key: key);

  @override
  _withdrawscreenState createState() => _withdrawscreenState();
}

class _withdrawscreenState extends State<WithdrawScreen> {
  String? currentEmpSalary;
  String? currentWithdraw;
  String? currentBalanceInAccount;
  var formatter = NumberFormat('#,000');
  var decimalFormatter = NumberFormat('#,000.00');
  DateTime getCurrentMonth = DateTime.now();
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;

    if (BalanceModel.totalWithdarw != null) {
      if (BalanceModel.totalWithdarw! > 99)
        currentWithdraw =
            formatter.format(BalanceModel.totalWithdarw!).toString();
      else
        currentWithdraw = BalanceModel.totalWithdarw!.toStringAsFixed(2);
    }
    if (BalanceModel.currentbalance != null) {
      if (double.parse(BalanceModel.currentbalance!) > 99)
        currentBalanceInAccount = formatter
            .format(double.parse(BalanceModel.currentbalance!))
            .toString();
      else
        currentBalanceInAccount =
            double.parse(BalanceModel.currentbalance.toString()) < 1
                ? '0'
                : double.parse(BalanceModel.currentbalance!).toStringAsFixed(0);
    }
    if (ProfileModel.salary != null) {
      if (double.parse(BalanceModel.currentbalance!) > 99)
        currentEmpSalary =
            formatter.format(double.parse(ProfileModel.salary!)).toString();
      else
        currentEmpSalary = ProfileModel.salary!;
    }
    if (BalanceModel.totalWithdarw != null) {
      if (BalanceModel.totalWithdarw! > 99)
        currentWithdraw =
            formatter.format(BalanceModel.totalWithdarw!.round()).toString();
      else
        currentWithdraw = BalanceModel.totalWithdarw!.round().toString();
    }

    return Scaffold(
      // appBar: new ReusableWidgetswithbackbutton().getAppBar(
      //     GestureDetector(
      //       onTap: () {
      //         // Navigator.pop(context);
      //         navigateToCustomNavigationBar(context, 2);
      //       },
      //       child: Row(
      //         children: [
      //           Container(
      //             decoration: BoxDecoration(
      //                 border: Border.all(color: whitecolor),
      //                 borderRadius: BorderRadius.circular(5)),
      //             child: Padding(
      //               padding:
      //                   const EdgeInsets.only(left: 8.0, top: 3, bottom: 3),
      //               child: Icon(Icons.arrow_back_ios),
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //     Row(
      //       children: [CustomTextWidget("Withdraw", whitecolor, 20)],
      //     )),
      backgroundColor: Colors.white,
      bottomSheet: SingleChildScrollView(
          child: BottomSheetWithNavigationScreen(
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [WithdrawView()],
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox.fromSize(
                // size: Size.fromRadius(48),
                child:
                    // SvgPicture.asset("assets/images/cont.svg"),
                    Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/transaction_details_background.png'),
                          fit: BoxFit.fill)),
                  child: Padding(
                    padding: EdgeInsets.all(shortestSide > 600 ? 12.sp : 25.0),
                    child: Column(
                      children: [
                        CustomSizeBox(shortestSide > 600 ? 12.sp : 0),
                        Text(
                          translateText('Available_Balance'),
                          textScaleFactor: 1,
                          style: appLanguage == 'ur'
                              ? GoogleFonts.notoNastaliqUrdu(
                                  fontSize: shortestSide > 600 ? 12.sp : 11,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                )
                              : GoogleFonts.poppins(
                                  fontSize: shortestSide > 600 ? 12.sp : 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                        ),
                        Text(
                          'PKR ' + currentBalanceInAccount.toString(),
                          textScaleFactor: 1,
                          style: appLanguage == 'ur'
                              ? GoogleFonts.notoNastaliqUrdu(
                                  fontSize: shortestSide > 600 ? 16.sp : 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )
                              : GoogleFonts.poppins(
                                  fontSize: shortestSide > 600 ? 16.sp : 22,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                        ),
                        CustomSizeBox(shortestSide > 600 ? 12.sp : 10),
                        Text(
                          LoginModel.salaryStartCycle != null
                              ? appLanguage == 'en'
                                  ? translateText('Salary_Cycle') +
                                      " - " +
                                      getMonthValue(LoginModel.salaryStartCycle! <= DateTime.now().day ? getCurrentMonth.month : getCurrentMonth.month - 1)
                                          .toString()
                                          .substring(0, 3) +
                                      " " +
                                      LoginModel.salaryStartCycle.toString() +
                                      " " +
                                      translateText('to') +
                                      " " +
                                      getMonthValue(LoginModel.salaryStartCycle! <= DateTime.now().day ? getCurrentMonth.month + 1 : getCurrentMonth.month)
                                          .toString()
                                          .substring(0, 3) +
                                      " " +
                                      LoginModel.salaryEndCycle.toString()
                                  : translateText('Salary_Cycle') +
                                      " - " +
                                      LoginModel.salaryStartCycle.toString() +
                                      " " +
                                      getMonthValue(LoginModel.salaryStartCycle! <= DateTime.now().day ? getCurrentMonth.month : getCurrentMonth.month - 1)
                                          .toString()
                                          .substring(
                                              0,
                                              getMonthValue(LoginModel.salaryStartCycle! <= DateTime.now().day ? getCurrentMonth.month : getCurrentMonth.month - 1)
                                                  .toString()
                                                  .length) +
                                      " " +
                                      translateText('to') +
                                      " " +
                                      LoginModel.salaryEndCycle.toString() +
                                      " " +
                                      getMonthValue(LoginModel.salaryStartCycle! <= DateTime.now().day
                                              ? getCurrentMonth.month + 1
                                              : getCurrentMonth.month)
                                          .toString()
                                          .substring(
                                              0,
                                              getMonthValue(LoginModel.salaryStartCycle! <= DateTime.now().day ? getCurrentMonth.month + 1 : getCurrentMonth.month)
                                                  .toString()
                                                  .length) +
                                      " " +
                                      translateText('up_to')
                              : appLanguage == 'en'
                                  ? translateText('Salary_Cycle') +
                                      " - " +
                                      getMonthValue(DateTime.now().month)
                                          .toString()
                                          .substring(0, 3) +
                                      ' 1 ' +
                                      translateText('to') +
                                      ' ' +
                                      getMonthValue(DateTime.now().month).toString().substring(0, 3) +
                                      ' ' +
                                      DateUtil().daysInMonth(DateTime.now().month, DateTime.now().year).toString() +
                                      translateText('up_to')
                                  : translateText('Salary_Cycle') + " - " + ' 1 ' + getMonthValue(DateTime.now().month).toString().substring(0, getMonthValue(DateTime.now().month).toString().length) + ' ' + translateText('to') + ' ' + DateUtil().daysInMonth(DateTime.now().month, DateTime.now().year).toString() + ' ' + getMonthValue(DateTime.now().month).toString().substring(0, getMonthValue(DateTime.now().month).toString().length) + translateText('up_to'),
                          textScaleFactor: 1,
                          style: appLanguage == 'ur'
                              ? GoogleFonts.notoNastaliqUrdu(
                                  fontSize: shortestSide > 600 ? 12.sp : 11,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                )
                              : GoogleFonts.poppins(
                                  fontSize: shortestSide > 600 ? 12.sp : 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                        ),
                        CustomSizeBox(shortestSide > 600 ? 12.sp : 10),
                        Row(
                          children: [
                            SizedBox(
                              width: shortestSide < 600
                                  ? 0
                                  : appLanguage == 'en'
                                      ? 10
                                      : 40,
                            ),
                            SvgPicture.asset(
                              'assets/images/wellet.svg',
                              width: shortestSide > 600 ? 20.sp : 20,
                              height: shortestSide > 600 ? 20.sp : 20,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: appLanguage == 'en'
                                  ? EdgeInsets.only(left: 8.0)
                                  : EdgeInsets.only(right: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    translateText('Earnings'),
                                    textScaleFactor: 1,
                                    style: appLanguage == 'ur'
                                        ? GoogleFonts.notoNastaliqUrdu(
                                            fontSize:
                                                shortestSide > 600 ? 12.sp : 11,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white,
                                          )
                                        : GoogleFonts.poppins(
                                            fontSize:
                                                shortestSide > 600 ? 12.sp : 13,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white),
                                  ),
                                  Text(
                                    "PKR " + currentEmpSalary.toString(),
                                    style: appLanguage == 'ur'
                                        ? GoogleFonts.notoNastaliqUrdu(
                                            fontSize:
                                                shortestSide > 600 ? 12.sp : 11,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white,
                                          )
                                        : GoogleFonts.poppins(
                                            fontSize:
                                                shortestSide > 600 ? 12.sp : 13,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            SvgPicture.asset(
                              'assets/images/dollar.svg',
                              width: shortestSide > 600 ? 20.sp : 20,
                              height: shortestSide > 600 ? 20.sp : 20,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: appLanguage == 'en'
                                  ? EdgeInsets.only(
                                      left: 8.0,
                                      right: shortestSide < 600 ? 0 : 30)
                                  : EdgeInsets.only(
                                      right: 8.0,
                                      left: shortestSide < 600 ? 0 : 30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    translateText('Withdrawals'),
                                    textScaleFactor: 1,
                                    style: appLanguage == 'ur'
                                        ? GoogleFonts.notoNastaliqUrdu(
                                            fontSize:
                                                shortestSide > 600 ? 12.sp : 11,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white,
                                          )
                                        : GoogleFonts.poppins(
                                            fontSize:
                                                shortestSide > 600 ? 12.sp : 13,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white),
                                  ),
                                  Text(
                                    "PKR " + currentWithdraw.toString(),
                                    style: appLanguage == 'ur'
                                        ? GoogleFonts.notoNastaliqUrdu(
                                            fontSize:
                                                shortestSide > 600 ? 12.sp : 11,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white,
                                          )
                                        : GoogleFonts.poppins(
                                            fontSize:
                                                shortestSide > 600 ? 12.sp : 13,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        CustomSizeBox(shortestSide > 600 ? 12.sp : 5),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      )),
      body: SafeArea(
        bottom: false,
        child: Container(
          child: Column(
            children: [
              // Positioned.fill(
              //   //
              //   child: Image(
              //     image: AssetImage('assets/images/splash.png'),
              //     fit: BoxFit.fill,
              //   ),
              // ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Stack(
                  children: [
                    Padding(
                      padding: appLanguage == 'en'
                          ? EdgeInsets.fromLTRB(shortestSide < 600 ? 20 : 30,
                              shortestSide < 600 ? 0 : 12, 0, 0)
                          : EdgeInsets.fromLTRB(0, 10, 20, 0),
                      child: GestureDetector(
                        onTap: () {
                          navigateToCustomNavigationBar(context, 2);
                        },
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
                    ),
                    Center(
                      child: Text(
                        translateText('Withdraw'),
                        textScaleFactor: 1,
                        style: appLanguage == 'ur'
                            ? GoogleFonts.notoNastaliqUrdu(
                                color: blueColor,
                                fontWeight: FontWeight.w500,
                                fontSize: shortestSide > 600 ? 16.sp : 18)
                            : GoogleFonts.poppins(
                                color: blueColor,
                                fontWeight: FontWeight.w500,
                                fontSize: shortestSide > 600 ? 18.sp : 20),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Divider(),
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
