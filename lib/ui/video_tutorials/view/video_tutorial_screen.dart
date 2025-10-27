import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/views/header.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/video_tutorials/view/video_tutorial_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoTutorialScreen extends StatefulWidget {
  const VideoTutorialScreen({Key? key}) : super(key: key);

  @override
  _videotutorialscreenState createState() => _videotutorialscreenState();
}

class _videotutorialscreenState extends State<VideoTutorialScreen> {
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: header(Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          translateText('Learn'),
                          style: appLanguage == 'ur'
                              ? GoogleFonts.notoNastaliqUrdu(
                                  fontSize: shortestSide > 600 ? 16.sp : 18,
                                  fontWeight: FontWeight.w500,
                                  color: newblueColor)
                              : GoogleFonts.poppins(
                                  fontSize: shortestSide > 600 ? 16.sp : 20,
                                  fontWeight: FontWeight.w500,
                                  color: newblueColor),
                        ),
                      ),
                    ),
                    Divider(),
                    Align(
                      alignment: appLanguage == 'en'
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                        child: Text(
                          translateText('Popular_Tutorials'),
                          style: appLanguage == 'ur'
                              ? GoogleFonts.notoNastaliqUrdu(
                                  fontSize: shortestSide > 600 ? 12.sp : 15,
                                  fontWeight: FontWeight.w500,
                                  color: newblueColor,
                                )
                              : GoogleFonts.poppins(
                                  fontSize: shortestSide > 600 ? 14.sp : 17,
                                  fontWeight: FontWeight.w500,
                                  color: newblueColor),
                        ),
                      ),
                    ),
                  ],
                )),
              ),
              Expanded(child: VideoTutorialView()),
            ],
          ),
        ),
      ),
    );
  }
}
