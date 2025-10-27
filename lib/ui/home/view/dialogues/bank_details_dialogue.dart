import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/dialogues/custom_dialogue.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/helper/image_url_headers.dart';
import 'package:ezwage/ui/accounts/models/accounts_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ezwage/ui/authentication/model/login_model.dart';

bankDetailsDialogue(BuildContext context, String bankImage) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        var shortestSide = MediaQuery.of(context).size.shortestSide;

        return CustomDialog(translateText('Bank_Details'), translateText('OK'),
            () {
          Navigator.pop(context);
        },
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSizeBox(20),
                shortestSide > 600
                    ? Image.asset(
                        "assets/images/bankicon.png",
                        height: 100,
                        fit: BoxFit.fitHeight,
                      )
                    : Image.asset("assets/images/bankicon.png"),
                CustomSizeBox(15),
                Text(translateText('Bank_Details'),
                    style: appLanguage == 'en'
                        ? GoogleFonts.poppins(
                            fontSize: shortestSide > 600
                                ? 12.sp /
                                    MediaQuery.of(context).textScaleFactor *
                                    1
                                : 14 /
                                    MediaQuery.of(context).textScaleFactor *
                                    1,
                            fontWeight: FontWeight.w700)
                        : GoogleFonts.notoNastaliqUrdu(
                            fontSize: shortestSide > 600
                                ? 14.sp /
                                    MediaQuery.of(context).textScaleFactor *
                                    1
                                : 16 /
                                    MediaQuery.of(context).textScaleFactor *
                                    1,
                            fontWeight: FontWeight.w700)),
                CustomSizeBox(15),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: emailtextfieldborderclr),
                      color: emailtextfieldclr,
                    ),
                    child: TextField(
                        enableInteractiveSelection: false,
                        readOnly: true,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: appLanguage == 'en'
                                  ? EdgeInsets.fromLTRB(15, 8, 20, 10)
                                  : EdgeInsets.fromLTRB(20, 8, 15, 10),
                              child: Container(
                                  width: shortestSide > 600 ? 20.sp : 20,
                                  height: shortestSide > 600 ? 20.sp : 20,
                                  decoration: BoxDecoration(),
                                  child: shortestSide > 600
                                      ? Image.network(
                                          bankImage,
                                          width: 14.sp,
                                          height: 14.sp,
                                          headers: IMAGE_HEADERS,
                                          fit: BoxFit.cover,
                                        )
                                      : Image.network(
                                          bankImage,
                                          // width: shortestSide > 600 ?14.sp:15,
                                          // height: shortestSide > 600 ?14.sp:15,
                                          // headers: IMAGE_HEADERS,fit: BoxFit.cover,
                                        )),
                            ),
                            border: InputBorder.none,
                            fillColor: Colors.transparent,
                            filled: true,
                            hintText: AccountsModel.bankName,
                            hintStyle: GoogleFonts.poppins(
                                color: bankdialoguetextclr,
                                fontSize: shortestSide > 600
                                    ? 12.sp /
                                        MediaQuery.of(context).textScaleFactor *
                                        1
                                    : 12 /
                                        MediaQuery.of(context).textScaleFactor *
                                        1,
                                fontWeight: FontWeight.w500)))),
                CustomSizeBox(shortestSide > 600 ? 12.sp : 10),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: emailtextfieldborderclr),
                      color: emailtextfieldclr,
                    ),
                    child: TextField(
                        enableInteractiveSelection: false,
                        readOnly: true,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            hintStyle: GoogleFonts.poppins(
                                color: bankdialoguetextclr,
                                fontSize: shortestSide > 600
                                    ? 12.sp /
                                        MediaQuery.of(context).textScaleFactor *
                                        1
                                    : 12 /
                                        MediaQuery.of(context).textScaleFactor *
                                        1,
                                fontWeight: FontWeight.w500),
                            prefixIcon: Padding(
                              padding: appLanguage == 'en'
                                  ? EdgeInsets.fromLTRB(15, 8, 20, 10)
                                  : EdgeInsets.fromLTRB(20, 8, 15, 10),
                              child: SvgPicture.asset(
                                'assets/images/man.svg',
                                width: shortestSide > 600 ? 14.sp : 15,
                                height: shortestSide > 600 ? 14.sp : 15,
                              ),
                            ),
                            border: InputBorder.none,
                            fillColor: Colors.transparent,
                            filled: true,
                            hintText:
                                '  ${LoginModel.userName}'))),
                CustomSizeBox(shortestSide > 600 ? 12.sp : 10),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: emailtextfieldborderclr),
                      color: emailtextfieldclr,
                    ),
                    child: TextField(
                        enableInteractiveSelection: false,
                        readOnly: true,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            hintStyle: GoogleFonts.poppins(
                                color: bankdialoguetextclr,
                                fontSize: shortestSide > 600
                                    ? 12.sp /
                                        MediaQuery.of(context).textScaleFactor *
                                        1
                                    : 12 /
                                        MediaQuery.of(context).textScaleFactor *
                                        1,
                                fontWeight: FontWeight.w500),
                            prefixIcon: Padding(
                              padding: appLanguage == 'en'
                                  ? EdgeInsets.fromLTRB(15, 8, 20, 10)
                                  : EdgeInsets.fromLTRB(20, 8, 15, 10),
                              child: SvgPicture.asset(
                                'assets/images/IBAN.svg',
                                width: shortestSide > 600 ? 5.sp : 5,
                                height: shortestSide > 600 ? 5.sp : 5,
                              ),
                            ),
                            border: InputBorder.none,
                            fillColor: Colors.transparent,
                            filled: true,
                            hintText: " ${AccountsModel.accountNumber}"))),
                CustomSizeBox(10)
              ],
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF4F4F4)),
              child: Image.network(
                bankImage,
                fit: BoxFit.cover,
                headers: IMAGE_HEADERS,
              ),
            ), true );
      });
}
