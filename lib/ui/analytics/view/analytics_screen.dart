import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/models/balance.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/utils/date_util.dart';
import 'package:ezwage/global/utils/get_month.dart';
import 'package:ezwage/global/views/bottomsheets/bottom_sheet_with_navigation_screen.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/global/views/header.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/analytics/controller/analytics_date_range_provider.dart';
import 'package:ezwage/ui/analytics/controller/analytics_provider.dart';
import 'package:ezwage/ui/analytics/view/analytics_view.dart';
import 'package:ezwage/ui/authentication/model/login_model.dart';
import 'package:ezwage/ui/profile/model/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  _analyticsscreenState createState() => _analyticsscreenState();
}

class _analyticsscreenState extends State<AnalyticsScreen> {
  String currentEmpSalary = '0';
  String currentWithdraw = '0';
  DateTime getCurrentMonth = DateTime.now();

  var formatter = NumberFormat('#,000');
  String currentBalanceInAccount = '0';
  DateTime currentDateTime = DateTime.now();
  showPopupMenu(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    showMenu<String>(
      context: context,
      position: appLanguage == 'en'
          ? RelativeRect.fromLTRB(0.0, 100.0, 200.0, 0.0)
          : RelativeRect.fromLTRB(0.0, 120.0, 0.0, 10.0),
      //position where you want to show the menu on screen

      items: [
        PopupMenuItem<String>(
            child: Container(
              width: shortestSide > 600 ? 70.sp : 90,
              child: Text(
                '6 ' + translateText('Month'),
                style: appLanguage == 'en'
                    ? GoogleFonts.poppins(
                        fontSize: shortestSide > 600 ? 12.sp : 12,
                        fontWeight: FontWeight.w500,
                      )
                    : GoogleFonts.notoNastaliqUrdu(
                        fontSize: shortestSide > 600 ? 12.sp : 12,
                        fontWeight: FontWeight.w500,
                      ),
              ),
            ),
            value: '6'),
        PopupMenuItem<String>(
            child: Container(
              width: shortestSide > 600 ? 60.sp : 90,
              child: Text(
                '5 ' + translateText('Month'),
                style: appLanguage == 'en'
                    ? GoogleFonts.poppins(
                        fontSize: shortestSide > 600 ? 12.sp : 12,
                        fontWeight: FontWeight.w500,
                      )
                    : GoogleFonts.notoNastaliqUrdu(
                        fontSize: shortestSide > 600 ? 12.sp : 12,
                        fontWeight: FontWeight.w500,
                      ),
              ),
            ),
            value: '5'),
        PopupMenuItem<String>(
            child: Container(
              width: shortestSide > 600 ? 60.sp : 90,
              child: Text(
                '4 ' + translateText('Month'),
                style: appLanguage == 'en'
                    ? GoogleFonts.poppins(
                        fontSize: shortestSide > 600 ? 12.sp : 12,
                        fontWeight: FontWeight.w500,
                      )
                    : GoogleFonts.notoNastaliqUrdu(
                        fontSize: shortestSide > 600 ? 12.sp : 12,
                        fontWeight: FontWeight.w500,
                      ),
              ),
            ),
            value: '4'),
        PopupMenuItem<String>(
            child: Container(
              width: shortestSide > 600 ? 60.sp : 90,
              child: Text(
                '3 ' + translateText('Month'),
                style: appLanguage == 'en'
                    ? GoogleFonts.poppins(
                        fontSize: shortestSide > 600 ? 12.sp : 12,
                        fontWeight: FontWeight.w500,
                      )
                    : GoogleFonts.notoNastaliqUrdu(
                        fontSize: shortestSide > 600 ? 12.sp : 12,
                        fontWeight: FontWeight.w500,
                      ),
              ),
            ),
            value: '3'),
      ],
      elevation: 8.0,
    ).then<void>((String? itemSelected) {
      context
          .read<AnalyticsDateRangeProvider>()
          .setMonthCount(int.parse(itemSelected!));
      context
          .read<AnalyticsProvider>()
          .getAnalyticsData(int.parse(itemSelected), context);
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;

    int _countMonths =
        context.watch<AnalyticsDateRangeProvider>().selectedMonthCount;
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
    if (ProfileModel.salary != null && BalanceModel.currentbalance != null) {
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
      //       },
      //       child: Row(
      //         children: [
      //           // Container(
      //           //   decoration: BoxDecoration(border: Border.all(color: whitecolor), borderRadius: BorderRadius.circular(5)),
      //           //   child: Padding(
      //           //     padding: const EdgeInsets.only(left: 8.0, top: 3, bottom: 3),
      //           //     child: Icon(Icons.arrow_back_ios),
      //           //   ),
      //           // )
      //         ],
      //       ),
      //     ),
      //     Row(
      //       children: [CustomTextWidget("Analytics", whitecolor, 20)],
      //     )),
      backgroundColor: Colors.white,
      bottomSheet: SingleChildScrollView(
          child: BottomSheetWithNavigationScreen(
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [AnalyticsView(_countMonths)],
        ),
        Container(
          child: Center(
            child: Padding(
              padding: appLanguage == 'en'
                  ? EdgeInsets.only(bottom: 30.0)
                  : EdgeInsets.only(bottom: 30.0, top: 20),
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
                      padding:
                          EdgeInsets.all(shortestSide > 600 ? 12.sp : 30.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomSizeBox(shortestSide > 600 ? 12.sp : 0),
                          Text(
                            translateText('Available_Balance'),
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
                            style: appLanguage == 'ur'
                                ? GoogleFonts.notoNastaliqUrdu(
                                    fontSize: shortestSide > 600 ? 16.sp : 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  )
                                : GoogleFonts.poppins(
                                    fontSize: shortestSide > 600 ? 14.sp : 22,
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
                                        getMonthValue(LoginModel.salaryStartCycle! <= DateTime.now().day ? getCurrentMonth.month + 1 : getCurrentMonth.month)
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
                                        getMonthValue(DateTime.now().month)
                                            .toString()
                                            .substring(0, 3) +
                                        ' ' +
                                        DateUtil()
                                            .daysInMonth(
                                                DateTime.now().month, DateTime.now().year)
                                            .toString() +
                                        translateText('up_to')
                                    : translateText('Salary_Cycle') + " - " + ' 1 ' + getMonthValue(DateTime.now().month).toString().substring(0, getMonthValue(DateTime.now().month).toString().length) + ' ' + translateText('to') + ' ' + DateUtil().daysInMonth(DateTime.now().month, DateTime.now().year).toString() + ' ' + getMonthValue(DateTime.now().month).toString().substring(0, getMonthValue(DateTime.now().month).toString().length) + translateText('up_to'),
                            style: appLanguage == 'ur'
                                ? GoogleFonts.notoNastaliqUrdu(
                                    fontSize: shortestSide > 600 ? 10.sp : 11,
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
                                width: shortestSide > 600 ? 16.sp : 20,
                                height: shortestSide > 600 ? 16.sp : 20,
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
                                      style: appLanguage == 'ur'
                                          ? GoogleFonts.notoNastaliqUrdu(
                                              fontSize: shortestSide > 600
                                                  ? 10.sp
                                                  : 11,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white,
                                            )
                                          : GoogleFonts.poppins(
                                              fontSize: shortestSide > 600
                                                  ? 12.sp
                                                  : 13,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white),
                                    ),
                                    Text(
                                      "PKR " + currentEmpSalary.toString(),
                                      style: appLanguage == 'ur'
                                          ? GoogleFonts.notoNastaliqUrdu(
                                              fontSize: shortestSide > 600
                                                  ? 10.sp
                                                  : 11,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white,
                                            )
                                          : GoogleFonts.poppins(
                                              fontSize: shortestSide > 600
                                                  ? 12.sp
                                                  : 13,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              SvgPicture.asset(
                                'assets/images/dollar.svg',
                                width: shortestSide > 600 ? 16.sp : 20,
                                height: shortestSide > 600 ? 16.sp : 20,
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
                                      style: appLanguage == 'ur'
                                          ? GoogleFonts.notoNastaliqUrdu(
                                              fontSize: shortestSide > 600
                                                  ? 11.sp
                                                  : 11,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white,
                                            )
                                          : GoogleFonts.poppins(
                                              fontSize: shortestSide > 600
                                                  ? 12.sp
                                                  : 13,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white),
                                    ),
                                    Text(
                                      "PKR " + currentWithdraw.toString(),
                                      style: appLanguage == 'ur'
                                          ? GoogleFonts.notoNastaliqUrdu(
                                              fontSize: shortestSide > 600
                                                  ? 11.sp
                                                  : 11,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white,
                                            )
                                          : GoogleFonts.poppins(
                                              fontSize: shortestSide > 600
                                                  ? 12.sp
                                                  : 13,
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
        ),
      )),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: header(Column(
                    children: [
                      // Row(
                      //   children: [CustomTextWidget("Analytics", whitecolor, 20)],
                      // ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            translateText('Analytics'),
                            style: appLanguage == 'ur'
                                ? GoogleFonts.notoNastaliqUrdu(
                                    fontSize: shortestSide > 600 ? 16.sp : 18,
                                    fontWeight: FontWeight.w500,
                                    color: newblueColor,
                                  )
                                : GoogleFonts.poppins(
                                    fontSize: shortestSide > 600 ? 16.sp : 20,
                                    fontWeight: FontWeight.w500,
                                    color: newblueColor),
                          ),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            if (appLanguage == 'en')
                              RichText(
                                  text: TextSpan(
                                      text: translateText('Show_By') + ' ',
                                      style: GoogleFonts.poppins(
                                          fontSize:
                                              shortestSide > 600 ? 12.sp : 12,
                                          fontWeight: FontWeight.w500,
                                          color: newblueColor),
                                      children: [
                                    TextSpan(
                                      text: _countMonths.toString() + ' ',
                                      style: GoogleFonts.poppins(
                                          fontSize:
                                              shortestSide > 600 ? 12.sp : 12,
                                          fontWeight: FontWeight.bold,
                                          color: newblueColor),
                                    ),
                                    TextSpan(
                                      text: translateText('Month'),
                                      style: GoogleFonts.poppins(
                                          fontSize:
                                              shortestSide > 600 ? 12.sp : 12,
                                          fontWeight: FontWeight.bold,
                                          color: newblueColor),
                                    ),
                                  ])),
                            if (appLanguage == 'ur')
                              RichText(
                                  text: TextSpan(
                                      text: _countMonths.toString() + ' ',
                                      style: GoogleFonts.poppins(
                                          fontSize:
                                              shortestSide > 600 ? 12.sp : 12,
                                          fontWeight: FontWeight.bold,
                                          color: newblueColor),
                                      children: [
                                    TextSpan(
                                      text: translateText('Month') + ' ',
                                      style: GoogleFonts.notoNastaliqUrdu(
                                        fontSize:
                                            shortestSide > 600 ? 10.sp : 10,
                                        fontWeight: FontWeight.w500,
                                        color: newblueColor,
                                      ),
                                    ),
                                    TextSpan(
                                      text: translateText('Show_By') + ' ',
                                      style: GoogleFonts.notoNastaliqUrdu(
                                        fontSize:
                                            shortestSide > 600 ? 10.sp : 10,
                                        fontWeight: FontWeight.bold,
                                        color: newblueColor,
                                      ),
                                    ),
                                  ])),
                            GestureDetector(
                              onTap: () {
                                showPopupMenu(context);
                              },
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: newblueColor,
                                size: shortestSide > 600 ? 20.sp : 30,
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Text(
                                appLanguage == 'ur'
                                    ? getMonthValue(currentDateTime.month -
                                            (_countMonths - 1)) +
                                        ' - ' +
                                        getMonthValue(currentDateTime.month)
                                    : getMonthValue(currentDateTime.month -
                                                (_countMonths - 1))
                                            .toString()
                                            .substring(0, 3) +
                                        ' - ' +
                                        getMonthValue(currentDateTime.month)
                                            .toString()
                                            .substring(0, 3),
                                style: appLanguage == 'ur'
                                    ? GoogleFonts.notoNastaliqUrdu(
                                        fontSize:
                                            shortestSide > 600 ? 10.sp : 10,
                                        fontWeight: FontWeight.w500,
                                        color: newblueColor,
                                      )
                                    : GoogleFonts.poppins(
                                        fontSize:
                                            shortestSide > 600 ? 12.sp : 12,
                                        fontWeight: FontWeight.w500,
                                        color: newblueColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
