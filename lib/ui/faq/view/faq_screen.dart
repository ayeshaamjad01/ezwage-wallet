import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/header.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/faq/controller/faq_provider.dart';
import 'package:ezwage/ui/faq/view/faq_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  _faqscreenState createState() => _faqscreenState();
}

class _faqscreenState extends State<FaqScreen> {
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: appLanguage == 'ur'
            ? Size.fromHeight(shortestSide < 600 ? 60.0 : 70)
            : Size.fromHeight(60.0),
        child: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: header(Column(
              children: [
                Padding(
                  padding: appLanguage == 'ur'
                      ? EdgeInsets.fromLTRB(
                          0, 35, 0, shortestSide > 600 ? 10 : 20)
                      : EdgeInsets.fromLTRB(0, 35, 0, 20),
                  child: Stack(
                    children: [
                      Padding(
                        padding: appLanguage == 'en'
                            ? EdgeInsets.fromLTRB(shortestSide < 600 ? 10 : 30,
                                shortestSide < 600 ? 0 : 15, 0, 0)
                            : EdgeInsets.fromLTRB(
                                0, shortestSide < 600 ? 10 : 20, 10, 0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
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
                          translateText('FAQs'),
                          textScaleFactor: 1,
                          style: appLanguage == 'ur'
                              ? GoogleFonts.notoNastaliqUrdu(
                                  color: newblueColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: shortestSide > 600 ? 12.sp : 18)
                              : GoogleFonts.poppins(
                                  color: newblueColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: shortestSide > 600 ? 18.sp : 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider()
              ],
            )),
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                      height: double.infinity,
                      // height: MediaQuery.of(context).size.height / 1.35,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                        child: ListView(
                          children: [
                            ChangeNotifierProvider<FaqProvider>(
                                create: (_) => FaqProvider(), child: FaqView()),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
