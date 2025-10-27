import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/ezwager/controller/ezwager_provider.dart';
import 'package:ezwage/ui/ezwager/view/ezwager_view.dart';
import 'package:ezwage/ui/video_tutorials/view/video_tutorial_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LearnTab extends StatefulWidget {
  @override
  State<LearnTab> createState() => _LearnTabState();
}

class _LearnTabState extends State<LearnTab> {
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      translateText('Learn'),
                      textScaleFactor: 1,
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
                DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xffE1E1E1), width: 2)),
                          ),
                          child: TabBar(
                            indicatorColor: Colors.blue,
                            unselectedLabelColor: Colors.grey,
                            labelColor: Colors.blue,
                            padding: EdgeInsets.zero,
                            labelStyle: appLanguage == 'ur'
                                ? GoogleFonts.notoNastaliqUrdu(
                                    fontSize: shortestSide > 600 ? 8.sp : 8,
                                  )
                                : GoogleFonts.poppins(
                                    fontSize: shortestSide > 600 ? 8.sp : 10,
                                    fontWeight: FontWeight.w500),
                            tabs: [
                              Tab(
                                child: Text(
                                  'Tutorials',
                                  textScaleFactor: 1,
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'EZ Wager',
                                  textScaleFactor: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          child: TabBarView(
                            children: [
                              VideoTutorialView(),
                              ChangeNotifierProvider<EZWagerProvider>(
                                  create: (_) => EZWagerProvider(),
                                  child: EZWagerView())
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
