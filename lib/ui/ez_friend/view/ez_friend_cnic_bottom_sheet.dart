import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/utils/logo_loader.dart';
import 'package:ezwage/ui/ez_friend/controller/ez_friend_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EZFriendCnicBottomSheet extends StatefulWidget {
  @override
  State<EZFriendCnicBottomSheet> createState() =>
      _EZFriendCnicBottomSheetState();
}

class _EZFriendCnicBottomSheetState extends State<EZFriendCnicBottomSheet> {
  final cnicController = TextEditingController();
  bool firstClearEvent = false;
  bool secondClearEvent = false;

  @override
  Widget build(BuildContext context) {
    bool showSuffix = context.watch<EZFriendProvider>().showSuffix;
    bool cnicFound = context.watch<EZFriendProvider>().cnicFound;
    var suffixLogo = context.watch<EZFriendProvider>().suffixLogo;
    return Padding(
      padding: EdgeInsets.fromLTRB(
          15, 15, 15, MediaQuery.of(context).viewInsets.bottom + 15),
      child: Container(
        height: 240,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(appLanguage == 'en' ? 47 : 0, 28,
                  appLanguage == 'ur' ? 47 : 0, 0),
              child: Text(
                'Enter Your EZ Friend’s CNIC',
                textScaleFactor: 1,
                style: GoogleFonts.poppins(
                    fontSize: 13, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(appLanguage == 'en' ? 47 : 0, 5,
                  appLanguage == 'ur' ? 47 : 0, 0),
              child: SizedBox(
                width: 229,
                child: Text(
                  'Note: Friend must be a employee of a company onboarded by EZ Wage',
                  textScaleFactor: 1,
                  style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(28, 28, 28, 0.2)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(35, 15, 35, 0),
              child: TextFormField(
                controller: cnicController,
                enableInteractiveSelection: false,
                style: GoogleFonts.openSans(
                    // color: Color.fromRGBO(0, 0, 0, 0.2),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                onChanged: ((value) {
                  if (value.length > 0) {
                    if ((cnicController.text[value.length - 1] == '-' ||
                            cnicController.text[value.length - 1] == ' ')
                        //     &&
                        // value.length != 6 &&
                        // value.length != 14
                        ) {
                      cnicController.text =
                          cnicController.text.substring(0, value.length - 1);
                      cnicController.selection = TextSelection.collapsed(
                          offset: cnicController.text.length);
                    } else {
                      if (value.length > 12) {
                        context
                            .read<EZFriendProvider>()
                            .getCnicDetails(cnicController.text, context);
                        FocusScope.of(context).unfocus();
                      }
                      // R
                      if (value.length < 13) {
                        if (showSuffix == true) {
                          context.read<EZFriendProvider>().disableSuffix();
                        }
                      }
                    }
                  }
                }),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
                    suffixIcon: showSuffix == true
                        ? Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SvgPicture.asset(
                              suffixLogo,
                            ),
                          )
                        : null,
                    labelText: 'CNIC',
                    labelStyle: GoogleFonts.openSans(
                      fontSize: 12 / MediaQuery.of(context).textScaleFactor * 1,
                      fontWeight: FontWeight.w400,
                    ),
                    hintText: 'Ex: 3440179222459',
                    hintStyle: GoogleFonts.openSans(
                      fontSize: 12 / MediaQuery.of(context).textScaleFactor * 1,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(0, 0, 0, 0.2),
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
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset(
                        'assets/images/cnic_dialoug_suffix_icon.svg',
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 25,
              child: Column(
                children: [
                  if (showSuffix == true && cnicFound == false)
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 5),
                      child: Text(
                        'Friend Not Found!',
                        textScaleFactor: 1,
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffE74A3B)),
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 124,
                  height: 35,
                  child: ElevatedButton(
                      onPressed: () {
                        if (cnicFound == true) {
                          showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return LogoLoader();
                              });
                          context
                              .read<EZFriendProvider>()
                              .navigateToSendForm(context);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: cnicFound == true
                            ? Color(0xff00A2FF)
                            : Colors.white,
                        side: BorderSide(
                            color: cnicFound == true
                                ? Color(0xff00A2FF)
                                : Color.fromRGBO(128, 128, 128, 0.5)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Next',
                        textScaleFactor: 1,
                        style: GoogleFonts.openSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: cnicFound == true
                                ? Colors.white
                                : Color.fromRGBO(128, 128, 128, 0.5)),
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
