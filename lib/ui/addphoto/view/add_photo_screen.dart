import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/navigations/navigate_bottom_bar.dart';
import 'package:ezwage/global/navigations/profile_navigation.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/addphoto/view/add_photo_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class AddPhotoScreen extends StatefulWidget {
  String pageToNavigate;
  AddPhotoScreen(this.pageToNavigate);

  @override
  _addphotoscreenState createState() => _addphotoscreenState();
}

class _addphotoscreenState extends State<AddPhotoScreen> {
  _pageNavigation() {
    Navigator.pop(context);
    if (widget.pageToNavigate == 'Home') {
      navigateToCustomNavigationBar(context, 2);
    } else {
      navigateToProfileScreen(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Scaffold(
      // appBar: new ReusableWidgetswithbackbutton().getAppBar(
      //     GestureDetector(
      //       onTap: () {
      //         Navigator.pop(context);
      //       },
      //       child: Row(
      //         children: [
      //           Container(
      //             decoration: BoxDecoration(
      //                 border: Border.all(color: whitecolor),
      //                 borderRadius: BorderRadius.circular(5)),
      //             child: Padding(
      //               padding:
      //                   const EdgeInsets.only(left: 8.0, top: 3, bottom: 3),
      //               child: Icon(Icons.arrow_back_ios),
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //     Row(
      //       children: [CustomTextWidget("Add photo", whitecolor, 20)],
      //     )),
      backgroundColor: Colors.white,
      // bottomSheet: SingleChildScrollView(
      //     child: BottomSheetAddPhoto(Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [AddPhotoView(widget.pageToNavigate)],
      // ))),
      body: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(shortestSide < 600 ? 100 : 60.sp),
          child: Column(
            children: [
              Stack(
                children: [
                  GestureDetector(
                      onTap: () {
                        _pageNavigation();
                      },
                      child: Align(
                        alignment: appLanguage == 'en'
                            ? Alignment.centerLeft
                            : Alignment.centerRight,
                        child: Padding(
                          padding: appLanguage == 'en'
                              ? EdgeInsets.fromLTRB(
                                  shortestSide < 600 ? 20 : 30,
                                  shortestSide < 600 ? 40 : 52,
                                  0,
                                  0)
                              : EdgeInsets.fromLTRB(0, 48, 20, 0),
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
                      )),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: Text(
                        translateText('Add_Photo'),
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
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(11, 8, 11, 0),
                child: Divider(),
              ),
            ],
          ),
        ),
        body: SafeArea(child: AddPhotoView(widget.pageToNavigate)),
      ),
    );
  }
}
