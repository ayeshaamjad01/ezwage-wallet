import 'package:ezwage/global/navigations/navigate_bottom_bar.dart';
import 'package:ezwage/global/utils/custom_snackbar.dart';
import 'package:ezwage/ui/home/controller/home_tab_provider.dart';
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/models/balance.dart';
import 'package:ezwage/global/navigations/notification_navigation.dart';
import 'package:ezwage/global/navigations/withdraw_navigation.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/utils/date_util.dart';
import 'package:ezwage/global/utils/get_month.dart';
import 'package:ezwage/global/utils/url_profile_image.dart';
import 'package:ezwage/global/views/buttons/small_button.dart';
import 'package:ezwage/global/views/drawer/home_drawer.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/helper/image_url_headers.dart';
import 'package:ezwage/ui/accounts/models/accounts_model.dart';
import 'package:ezwage/ui/authentication/model/login_model.dart';
import 'package:ezwage/ui/home/model/notification_timer.dart';
import 'package:ezwage/ui/home/view/home_view.dart';
import 'package:ezwage/ui/profile/model/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<HomeScreen> {
  var formatter = NumberFormat('#,000');
  String currentBalanceInAccount = '0';
  String currentEmpSalary = '0';
  String currentWithdraw = '0';

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      context.read<HomeTabProvider>().getEmployeeLatestBalance(context);
      context.read<HomeTabProvider>().checkNewNotifications(context);
      context.read<HomeTabProvider>().setNotificationsCheck(context);
    });
  }

  String id = ProfileModel.empid.toString();

  DateTime getCurrentMonth = DateTime.now();
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;

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
    bool _newNotificationsAvailable =
        context.watch<HomeTabProvider>().notificationsAvailable;
    return Scaffold(
      key: _scaffoldKey,
      drawer: Padding(
        padding: appLanguage == 'en'
            ? EdgeInsets.fromLTRB(0, 0, 50, 0)
            : EdgeInsets.fromLTRB(50, 0, 0, 0),
        child: Container(
          width: shortestSide > 600
              ? MediaQuery.of(context).size.width / 1.4
              : double.infinity,
          child: Drawer(
            child: HomeDrawer(),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.white,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomSizeBox(10),
              Row(
                children: [
                  Expanded(
                    flex: appLanguage == 'en' ? 7 : 6,
                    child: Align(
                      alignment: appLanguage == 'en'
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: Padding(
                        padding: appLanguage == 'en'
                            ? EdgeInsets.fromLTRB(
                                shortestSide > 600 ? 8.sp : 10, 0, 0, 0)
                            : EdgeInsets.fromLTRB(
                                0, 0, shortestSide > 600 ? 8.sp : 10, 0),
                        child: GestureDetector(
                            onTap: () {
                              // if (appLanguage == 'en')
                              _scaffoldKey.currentState!.openDrawer();
                              // else
                              //   _scaffoldKey.currentState!.openEndDrawer();
                            },
                            child: Row(
                              children: [
                                if (urlProfileImage != 'Default')
                                  Padding(
                                    padding: appLanguage == 'en'
                                        ? EdgeInsets.only(left: 8.0, right: 20)
                                        : EdgeInsets.only(right: 8.0, left: 20),
                                    child: CircleAvatar(
                                      radius: shortestSide > 600 ? 25.sp : 25,
                                      backgroundColor: Colors.transparent,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xff00A2FF),
                                            width: 1.0,
                                          ),
                                        ),
                                        child: ClipOval(
                                          child: Image.network(
                                            urlProfileImage,
                                            fit: BoxFit.cover,
                                            width:
                                                shortestSide > 600 ? 40.sp : 60,
                                            height:
                                                shortestSide > 600 ? 40.sp : 60,
                                            headers: IMAGE_HEADERS,
                                            errorBuilder:
                                                (context, error, stackTrace) {
                                              return Icon(
                                                Icons.account_circle,
                                                color: blueColor,
                                                size: shortestSide > 600
                                                    ? 40.sp
                                                    : 50,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                if (urlProfileImage == 'Default')
                                  Icon(
                                    Icons.account_circle,
                                    color: blueColor,
                                    size: shortestSide > 600 ? 40.sp : 60,
                                  ),
                                Flexible(
                                  flex: 1,
                                  child: Text(
                                    '${LoginModel.userName}',
                                    textScaleFactor: 1,
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w700,
                                        fontSize:
                                            shortestSide < 600 ? 17 : 17.sp,
                                        color: Color(0xff0BABE3)),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: appLanguage == 'en' && shortestSide < 600 ? 3 : 2,
                    child: Align(
                      alignment: appLanguage == 'en'
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: appLanguage == 'en' ? 20.0 : 10,
                              right: appLanguage == 'en' ? 0 : 0,
                            ),
                            child: GestureDetector(
                                onTap: () {
                                  navigateToCustomNavigationBar(context, 4);
                                },
                                child: SvgPicture.asset(
                                  'assets/images/faq_icon.svg',
                                  height: shortestSide > 600 ? 20.sp : 24,
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              navigateToNotificationScreen(context);
                              if (_newNotificationsAvailable == true) {
                                context
                                    .read<HomeTabProvider>()
                                    .readAllNotifications(context);
                              }
                            },
                            child: Padding(
                              padding: appLanguage == 'en'
                                  ? EdgeInsets.only(
                                      left: shortestSide > 600 ? 20.sp : 20.0,
                                      // top: shortestSide > 600 ? 5 : 0,
                                      right: 0)
                                  : EdgeInsets.only(
                                      right: shortestSide > 600 ? 20.sp : 20.0,
                                      left: 0),
                              child: _newNotificationsAvailable == true
                                  ? Badge.count(
                                      count: notificationCounter,
                                      textColor: Colors.white,
                                      backgroundColor: Color(0xffF1C061),
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              shortestSide > 600 ? 8.sp : 8),
                                      child: SvgPicture.asset(
                                        'assets/images/bell_icon.svg',
                                        height: shortestSide > 600 ? 20.sp : 24,
                                      ),
                                    )
                                  : SvgPicture.asset(
                                      'assets/images/bell_icon.svg',
                                      height: shortestSide > 600 ? 20.sp : 24,
                                    ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              CustomSizeBox(10),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Divider(),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: appLanguage == 'en'
                    ? EdgeInsets.fromLTRB(10, 0, shortestSide < 600 ? 3 : 0, 0)
                    : EdgeInsets.fromLTRB(10, 0, shortestSide < 600 ? 5 : 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/transaction_details_background.png'),
                          fit: BoxFit.fill)),
                  child: Padding(
                    padding: appLanguage == 'en'
                        ? EdgeInsets.all(30.0)
                        : EdgeInsets.all(20.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomSizeBox(shortestSide > 600 ? 10.sp : 0),
                        Text(
                          translateText('Available_Balance'),
                          textScaleFactor: 1,
                          style: appLanguage == 'ur'
                              ? GoogleFonts.notoNastaliqUrdu(
                                  fontSize: shortestSide > 600 ? 11.sp : 11,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                )
                              : GoogleFonts.poppins(
                                  fontSize: shortestSide > 600 ? 13.sp : 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                        ),
                        Text(
                          'PKR ' + currentBalanceInAccount.toString(),
                          textScaleFactor: 1,
                          style: appLanguage == 'ur'
                              ? GoogleFonts.notoNastaliqUrdu(
                                  fontSize: shortestSide > 600 ? 18.sp : 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )
                              : GoogleFonts.poppins(
                                  fontSize: shortestSide > 600 ? 20.sp : 22,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                        ),
                        CustomSizeBox(appLanguage == 'en' ? 10 : 5),
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
                          style: appLanguage == 'ur'
                              ? GoogleFonts.notoNastaliqUrdu(
                                  fontSize: shortestSide > 600 ? 11.sp : 11,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                )
                              : GoogleFonts.poppins(
                                  fontSize: shortestSide > 600 ? 13.sp : 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                          textScaleFactor: 1,
                        ),
                        CustomSizeBox(appLanguage == 'en'
                            ? shortestSide > 600
                                ? 8.sp
                                : 10
                            : shortestSide > 600
                                ? 4.sp
                                : 5),
                        Padding(
                          padding: appLanguage == 'en'
                              ? EdgeInsets.all(shortestSide > 600 ? 8.sp : 0)
                              : EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
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
                                              fontSize: shortestSide > 600
                                                  ? 10.sp
                                                  : 11,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white,
                                            )
                                          : GoogleFonts.poppins(
                                              fontSize: shortestSide > 600
                                                  ? 11.sp
                                                  : 13,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white),
                                    ),
                                    Text(
                                      "PKR " + currentEmpSalary.toString(),
                                      textScaleFactor: 1,
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
                                                  ? 11.sp
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
                                              fontSize: shortestSide > 600
                                                  ? 10.sp
                                                  : 11,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white,
                                            )
                                          : GoogleFonts.poppins(
                                              fontSize: shortestSide > 600
                                                  ? 11.sp
                                                  : 13,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white),
                                    ),
                                    Text(
                                      "PKR " + currentWithdraw.toString(),
                                      textScaleFactor: 1,
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
                                                  ? 11.sp
                                                  : 13,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (appLanguage == 'en')
                          CustomSizeBox(shortestSide > 600 ? 5.sp : 5),
                        SmallButton(
                          translateText('Withdraw'),
                          () {
                            if (LoginModel.userBankAvailable == true &&
                                    double.parse(currentBalanceInAccount
                                            .toString()
                                            .replaceAll(',', '')) >
                                        0
                                //     &&
                                // DateTime.now().day <
                                //     ProfileModel.payrollRunDate!
                                ) {
                              navigateToWithdrawScreen(context);
                            } else if (double.parse(currentBalanceInAccount
                                    .toString()
                                    .replaceAll(',', '')) <
                                1) {
                              CustomSnackBar(false).showInSnackBar(
                                  translateText(
                                      'Your_Available_Balance_is_Empty'),
                                  context);
                            } else {
                              CustomSnackBar(false).showInSnackBar(
                                  AccountsModel.res['results']['data'],
                                  context);
                            }
                          },
                        ),
                        if (appLanguage == 'ur')
                          CustomSizeBox(shortestSide > 600 ? 10.sp : 10),
                        CustomSizeBox(shortestSide > 600 ? 20.sp : 0)
                      ],
                    ),
                  ),
                ),
              ),
              HomeView(),
            ],
          ),
        ),
      ),
    );
  }
}
