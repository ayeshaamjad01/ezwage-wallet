import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/navigations/change_pin_settings_screen.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SetUpPin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: (() {
                navigateToChangePinSettings(context, true);
              }),
              child: Row(
                children: [
                  Padding(
                    padding: (appLanguage == 'ur')
                        ? const EdgeInsets.only(left: 15.0)
                        : const EdgeInsets.only(left: 5),
                    child: Container(
                      width: shortestSide > 600 ? 30.sp : 50,
                      height: shortestSide > 600 ? 30.sp : 50,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffb9d4cc).withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          // image: DecorationImage(
                          //     image: ),
                          borderRadius: BorderRadius.circular(
                              shortestSide > 600 ? 10.sp : 15),
                          color: Color(0xffF2FAFF)),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: SvgPicture.asset(
                          'assets/images/pin_lock.svg',
                          width: shortestSide > 600 ? 5.sp : 8,
                          height: shortestSide > 600 ? 5.sp : 8,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            translateText('Setup_PIN'),
                            style: GoogleFonts.poppins(
                                fontSize: shortestSide > 600 ? 10.sp : 12,
                                fontWeight: FontWeight.w500),
                          ),
                          CustomSizeBox(5),
                          Text(
                            translateText(
                                'Please_setup_PIN_to_prevent_unauthorized_access'),
                            style: GoogleFonts.poppins(
                              fontSize: shortestSide > 600 ? 10.sp : 12,
                              fontWeight: FontWeight.w400,
                              color: datetextclr,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Spacer(),
                  Icon(
                    Icons.navigate_next,
                    color: Color(0xff00A2FF),
                    size: shortestSide > 600 ? 20.sp : 30,
                  ),
                  // Radio(
                  //   value: 0,
                  //   groupValue: _radioValue,
                  //   onChanged: {},
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
