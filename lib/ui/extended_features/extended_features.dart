import 'package:ezwage/global/models/balance.dart';
import 'package:ezwage/global/utils/custom_snackbar.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/accounts/models/accounts_model.dart';
import 'package:ezwage/ui/authentication/model/login_model.dart';
import 'package:ezwage/ui/coming_soon/coming_soon_screen.dart';
import 'package:ezwage/ui/ez_friend/controller/ez_friend_provider.dart';
import 'package:ezwage/ui/ez_friend/model/ez_friend_model.dart';
import 'package:ezwage/ui/ez_friend/view/ez_friend_cnic_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ExtendedFeatures extends StatelessWidget {
  var featuresList = [
    'EZ Friend',
    'Utility Bills',
    'Easy Load',
    'Bank Transfer',
    'More'
  ];

  var featuresListIcons = [
    'assets/images/ez_friend.png',
    'assets/images/utility_bill.png',
    'assets/images/easy_load.png',
    'assets/images/bank_transfer.png',
    'assets/images/more_icon.png',
  ];

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return SizedBox(
      // height: 200,
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 5,
        physics: NeverScrollableScrollPhysics(),
        // childAspectRatio: 3 / 2,
        childAspectRatio: 1.3 / 2,
        children: List.generate(featuresListIcons.length, (index) {
          return InkWell(
            onTap: (() {
              if (index == 0) {
                EZFriendModel.pageIndex = 2;
                if (LoginModel.userBankAvailable == true &&
                    double.parse(BalanceModel.currentbalance.toString()) > 0) {
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
                      translateText('Your_Available_Balance_is_Empty'),
                      context);
                } else {
                  CustomSnackBar(false).showInSnackBar(
                      AccountsModel.res['results']['data'], context);
                }
              } else
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ComingSoonScreen(2)));
            }),
            child: Column(
              children: [
                Container(
                    width: shortestSide < 600 ? 51 : 51.sp,
                    height: shortestSide < 600 ? 51 : 51.sp,
                    decoration: BoxDecoration(
                        //  border: Border.all(color: Color(0xff2AB5E7), width: 1),
                        borderRadius:
                            BorderRadius.circular(shortestSide < 600 ? 15 : 20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 2,
                            // offset: const Offset(0.7, 2.0)
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(11),
                      child: Image.asset(featuresListIcons[index]),
                    )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      featuresList[index],
                      textScaleFactor: 1,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: shortestSide < 600 ? 11 : 11.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
