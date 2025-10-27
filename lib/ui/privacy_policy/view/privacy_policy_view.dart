import 'package:ezwage/ui/privacy_policy/controller/privacy_policy_controller.dart';
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/global/views/main_text.dart';
import 'package:ezwage/ui/privacy_policy/model/privacy_policay_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PrivacyPolicyView extends StatefulWidget {
  const PrivacyPolicyView({Key? key}) : super(key: key);

  @override
  _privacypolicyviewState createState() => _privacypolicyviewState();
}

class _privacypolicyviewState extends State<PrivacyPolicyView> {
  PrivacyPolicyData privacyPolicyData = PrivacyPolicyData();
  @override
  void initState() {
    super.initState();
    context.read<PrivacyPolicyProvider>().checkPolicyAccepted(context);
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    // bool _policyAccpted = context.watch<PrivacyPolicyProvider>().policyAccepted;
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Theme(
            data: ThemeData(
              highlightColor: Color(0xff0599F4), //Does not work
            ),
            child: RawScrollbar(
              radius: Radius.circular(20),
              trackBorderColor: Color(0xff0599F4),
              thumbColor: Color(0xff0599F4),
              trackColor: Color(0xff0599F4),
              trackRadius: Radius.circular(20),
              thickness: 10,
              thumbVisibility: true,
              child: Padding(
                padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: ListView(
                  children: [
                    CustomSizeBox(10),
                    // CustomTextWidget(
                    //     privacyPolicyData.privacyPolicyDescription, greycolor, 12),
                    Text(
                      privacyPolicyData.privacyPolicyDescription,
                      textScaleFactor: 1,
                      style: appLanguage == 'ur'
                          ? GoogleFonts.notoNastaliqUrdu(
                              fontSize: shortestSide > 600 ? 12.sp : 10,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            )
                          : GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: shortestSide > 600 ? 12.sp : 12),
                    ),
                    CustomSizeBox(25),
                    Row(
                      children: [
                        // Spacer(),
                        // CustomTextWidget(privacyPolicyData.privacyPolicyCollectTitle,
                        //     simpletextcolor, 14),
                        Text(
                          privacyPolicyData.privacyPolicyCollectTitle,
                          textScaleFactor: 1,
                          style: appLanguage == 'ur'
                              ? GoogleFonts.notoNastaliqUrdu(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: shortestSide > 600 ? 12.sp : 12)
                              : GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: shortestSide > 600 ? 12.sp : 14),
                        ),
                        Spacer(),
                      ],
                    ),
                    CustomSizeBox(10),
                    for (int index = 0;
                        index < privacyPolicyData.privacyPolicyTitleList.length;
                        index++)
                      Column(
                        children: [
                          // Row(
                          //   children: [
                          //     // Spacer(),
                          //     // CustomTextWidget(
                          //     //     privacyPolicyData.privacyPolicyTitleList[index],
                          //     //     simpletextcolor,
                          //     //     14),
                          //     Text(
                          //       privacyPolicyData.privacyPolicyTitleList[index],
                          //       style: appLanguage == 'ur'
                          //           ? GoogleFonts.notoNastaliqUrdu(
                          //               color: Colors.black,
                          //               fontWeight: FontWeight.w700,
                          //               fontSize: 11,
                          //             )
                          //           : GoogleFonts.poppins(
                          //               color: Colors.black,
                          //               fontWeight: FontWeight.w700,
                          //               fontSize: 14),
                          //     ),
                          //     Spacer(),
                          //   ],
                          // ),
                          Align(
                            alignment: appLanguage == 'en'
                                ? Alignment.centerLeft
                                : Alignment.centerRight,
                            child: Text(
                              privacyPolicyData.privacyPolicyTitleList[index],
                              style: appLanguage == 'ur'
                                  ? GoogleFonts.notoNastaliqUrdu(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: shortestSide > 600 ? 12.sp : 12,
                                    )
                                  : GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize:
                                          shortestSide > 600 ? 12.sp : 14),
                            ),
                          ),
                          CustomSizeBox(5),
                          // CustomTextWidget(
                          //     privacyPolicyData.privacyPolicyDescriptionList[index],
                          //     greycolor,
                          //     12),
                          Text(
                            privacyPolicyData
                                .privacyPolicyDescriptionList[index],
                            textScaleFactor: 1,
                            style: appLanguage == 'ur'
                                ? GoogleFonts.notoNastaliqUrdu(
                                    fontSize: shortestSide > 600 ? 12.sp : 10,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  )
                                : GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: shortestSide > 600 ? 12.sp : 12),
                          ),
                          CustomSizeBox(25),
                        ],
                      ),
                    CustomTextWidget(privacyPolicyData.privacyPolicyUpdateDate,
                        simpletextColor, shortestSide > 600 ? 12.sp : 14),
                    CustomSizeBox(25),
                    // if (_policyAccpted == false)
                    //   Row(
                    //     children: [
                    //       Spacer(),
                    //       privacypolicybutton(
                    //           translateText('Decline'),
                    //           () {
                    //         context
                    //             .read<PrivacyPolicyProvider>()
                    //             .setPolicyAcceptance(0);
                    //         Navigator.pop(context);
                    //       }, bluecolor, whitecolor, bluecolor),
                    //       SizedBox(
                    //         width: 10,
                    //       ),
                    //       privacypolicybutton(
                    //           translateText('Accept'),
                    //           () {
                    //         context
                    //             .read<PrivacyPolicyProvider>()
                    //             .setPolicyAcceptance(1);
                    //         Navigator.pop(context);
                    //       }, bluecolor, bluecolor, whitecolor),
                    //       Spacer()
                    //     ],
                    //   ),
                    CustomSizeBox(25),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
