import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart' hide CarouselController;
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/models/balance.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/utils/custom_snackbar.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/accounts/models/accounts_model.dart';
import 'package:ezwage/ui/authentication/model/login_model.dart';
import 'package:ezwage/ui/coming_soon/coming_soon_screen.dart';
import 'package:ezwage/ui/ez_friend/controller/ez_friend_provider.dart';
import 'package:ezwage/ui/ez_friend/model/ez_friend_model.dart';
import 'package:ezwage/ui/ez_friend/view/ez_friend_cnic_bottom_sheet.dart';
import 'package:ezwage/ui/ez_services/model/ez_services_model.dart';
import 'package:ezwage/ui/mutual_funds/controller/mutual_funds_controller.dart';
import 'package:ezwage/ui/mutual_funds/model/mutual_funds_model.dart';
import 'package:flutter/material.dart' hide CarouselController;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EZServicesView extends StatefulWidget {
  @override
  State<EZServicesView> createState() => _EZServicesViewState();
}

class _EZServicesViewState extends State<EZServicesView> {
  final CarouselSliderController carouselController = CarouselSliderController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    List imageList = [
      {"id": 1, "image_path": 'assets/images/inApp-banner-1.png'},
      {"id": 2, "image_path": 'assets/images/inApp-banner-2.png'},
      {"id": 3, "image_path": 'assets/images/inApp-banner-3.png'},
      {"id": 4, "image_path": 'assets/images/inApp-banner-4.png'}
    ];
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(shortestSide < 600 ? 60 : 40.sp),
        child: AppBar(
          backgroundColor: whiteColor,
          elevation: 0.5,
          automaticallyImplyLeading: false,
          title: Align(
            alignment: Alignment.center,
            child: Padding(
              padding:
                  EdgeInsets.fromLTRB(0, shortestSide < 600 ? 12 : 13, 0, 0),
              child: Text(
                'EZ -Services',
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
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              CarouselSlider(
                items: imageList
                    .map(
                      (item) => Image.asset(
                        item['image_path'],
                        fit: BoxFit.contain,
                        width: double.infinity,
                      ),
                    )
                    .toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2.3,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
              Positioned(
                bottom: 18.sp,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageList.asMap().entries.map((entry) {
                    final int indexOfEntry = entry.key;
                    return GestureDetector(
                      onTap: () =>
                          carouselController.animateToPage(indexOfEntry),
                      child: Container(
                        width: 5.sp,
                        height: 5.sp,
                        margin: EdgeInsets.symmetric(
                          horizontal: 2.sp,
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentIndex == indexOfEntry
                                ? Colors.white
                                : Colors.white60),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: ListView(
                shrinkWrap: true,
                children: [
                  GridView.count(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    childAspectRatio: shortestSide < 600 ? 4.2 / 4.1 : 8 / 6,
                    physics: NeverScrollableScrollPhysics(),
                    children: List.generate(EZServicesModel.servicesList.length,
                        (index) {
                      return GestureDetector(
                        onTap: (() {
                          if (index == 3) {
                            EZFriendModel.pageIndex = 1;
                            if (LoginModel.userBankAvailable == true &&
                                double.parse(BalanceModel.currentbalance
                                        .toString()) >
                                    0) {
                              showModalBottomSheet<void>(
                                context: context,
                                isScrollControlled: true,
                                elevation: 0,
                                builder: (BuildContext context) {
                                  return ChangeNotifierProvider(
                                      create: (_) => EZFriendProvider(),
                                      child: EZFriendCnicBottomSheet());
                                },
                              );
                            } else if (double.parse(
                                    BalanceModel.currentbalance.toString()) <
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
                          } else if (index == 0) {
                            MutualFundsModel.pageIndex = 1;
                            if (LoginModel.userBankAvailable == true &&
                                double.parse(BalanceModel.currentbalance
                                        .toString()) >
                                    0) {
                              // showModalBottomSheet<void>(
                              //   context: context,
                              //   isScrollControlled: true,
                              //   elevation: 0,
                              //   builder: (BuildContext context) {
                              //     return ChangeNotifierProvider(
                              //         create: (_) => MutualFundsController(),
                              //         child: MutualFundsForm());
                              //   },
                              // );
                              MutualFundsController.navigateToMutualFundsForm(
                                  context);
                            } else if (double.parse(
                                    BalanceModel.currentbalance.toString()) <
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
                          } else
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ComingSoonScreen(1)));
                        }),
                        child: Column(
                          children: [
                            SizedBox(
                              height: shortestSide < 600 ? 15.sp : 20.sp,
                            ),
                            Padding(
                              padding: shortestSide < 600
                                  ? EdgeInsets.all(0.0)
                                  : EdgeInsets.zero,
                              child: Container(
                                height: shortestSide < 600
                                    ? MediaQuery.of(context).size.height * 0.18
                                    : 100.sp,
                                width: shortestSide < 600 ? 130.sp : 120.sp,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      5,
                                    ),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.05),
                                          spreadRadius: 3,
                                          blurRadius: 3,
                                          offset: const Offset(0.0, 2.0))
                                    ]
                                    // border: Border.all(color: Color(0xffDADADA)),
                                    ),
                                child: Column(
                                  children: [
                                    EZServicesModel.servicesIcons[index]
                                            .contains('.svg')
                                        ? Padding(
                                            padding: EdgeInsets.only(
                                                top:
                                                    shortestSide < 600 ? 20 : 0,
                                                left:
                                                    shortestSide < 600 ? 25 : 0,
                                                right:
                                                    shortestSide < 600 ? 25 : 0,
                                                bottom: 10),
                                            child: SvgPicture.asset(
                                              EZServicesModel
                                                  .servicesIcons[index],
                                            ))
                                        : Padding(
                                            padding: const EdgeInsets.only(
                                                top: 25, bottom: 10),
                                            child: Container(
                                              height: shortestSide < 600
                                                  ? 56.sp
                                                  : 50.sp,
                                              width: shortestSide < 600
                                                  ? 56.sp
                                                  : 50.sp,
                                              child: Image.asset(
                                                EZServicesModel
                                                    .servicesIcons[index],
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 7.sp, top: 1.3.h),
                                      child: Text(
                                        EZServicesModel.servicesList[index],
                                        // textScaleFactor: 1,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: shortestSide < 600
                                                ? 12
                                                : 12.sp),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // SizedBox(
                            //   height: 20,
                            // ),
                          ],
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
