import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/bottomsheets/bottom_sheet_with_logo.dart';
import 'package:ezwage/global/views/header.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/support/view/support_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  _supportscreenState createState() => _supportscreenState();
}

class _supportscreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
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
      //       children: [CustomTextWidget("Support", whitecolor, 20)],
      //     )),
      backgroundColor: Colors.white,
      bottomSheet: BottomSheetWithLogo(Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [SupportView()],
      )),
      body: SafeArea(
        bottom: false,
        child: Container(
          child: Column(
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: header(Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              translateText('Support'),
                              textScaleFactor: 1,
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
                        Divider()
                      ],
                    )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
