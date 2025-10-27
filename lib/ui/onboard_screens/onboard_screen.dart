import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/global_hive.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/authentication/view/authscreen_create.dart';
import 'package:ezwage/ui/onboard_screens/first_onboard_screen.dart';
import 'package:ezwage/ui/onboard_screens/fourth_onboard_screen.dart';
import 'package:ezwage/ui/onboard_screens/second_onboard_screen.dart';
import 'package:ezwage/ui/onboard_screens/third_onboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardScreens extends StatefulWidget {
  const OnBoardScreens({Key? key}) : super(key: key);

  @override
  State<OnBoardScreens> createState() => _OnBoardScreensState();
}

class _OnBoardScreensState extends State<OnBoardScreens>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Scaffold(
        body: DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          TabBarView(
            controller: _controller,
            children: [
              FirstOnboardScreen(shortestSide),
              SecondOnboardScreen(shortestSide),
              ThirdOnboardScreen(shortestSide),
              FourthOnboardScreen(shortestSide),
            ],
          ),
          Container(
            height: 70,
            child: Row(
              children: [
                Expanded(
                    flex: shortestSide < 600 ? 2 : 1,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(
                              shortestSide < 600 ? 24.0 : 44.0, 50, 0, 0),
                          child: GestureDetector(
                            onTap: () {
                              preferences.put('startup_session', 'true');
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          AuthScreenCreate()));
                            },
                            child: Text(
                              translateText('Skip'),
                              textScaleFactor: 1,
                              style: appLanguage == 'en'
                                  ? GoogleFonts.poppins(
                                      color: Color.fromRGBO(255, 255, 255, 0.5),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13)
                                  : GoogleFonts.notoNastaliqUrdu(
                                      color: Color.fromRGBO(255, 255, 255, 0.5),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11),
                            ),
                          ),
                        ))),
                Expanded(
                  flex: shortestSide < 600 ? 6 : 8,
                  child: Align(
                    alignment: Alignment.center,
                    child: DefaultTabController(
                      initialIndex: 0,
                      length: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: TabBar(
                          controller: _controller,
                          unselectedLabelColor:
                              Color.fromRGBO(255, 255, 255, 0.2),
                          labelPadding: EdgeInsets.all(2),
                          labelColor: Colors.white,
                          indicator: UnderlineTabIndicator(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          isScrollable: true,
                          indicatorColor: Colors.transparent,
                          tabs: [
                            Tab(
                              icon: Icon(
                                Icons.circle,
                                size: 12,
                              ),
                            ),
                            Tab(
                              icon: Icon(
                                Icons.circle,
                                size: 12,
                              ),
                            ),
                            Tab(
                              icon: Icon(
                                Icons.circle,
                                size: 12,
                              ),
                            ),
                            Tab(
                              icon: Icon(
                                Icons.circle,
                                size: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: shortestSide < 600 ? 2 : 1,
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 50, 14, 0),
                          child: GestureDetector(
                            onTap: (() {
                              if (_controller.index == 3) {
                                preferences.put('startup_session', 'true');
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            AuthScreenCreate()));
                              } else {
                                _controller.animateTo(
                                  _controller.index + 1,
                                );
                              }
                            }),
                            child: Row(
                              children: [
                                Text(
                                  translateText('Next') + '    ',
                                  textScaleFactor: 1,
                                  style: appLanguage == 'en'
                                      ? GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13)
                                      : GoogleFonts.notoNastaliqUrdu(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 11),
                                ),
                                SvgPicture.asset('assets/images/next_icon.svg')
                              ],
                            ),
                          ),
                        ))),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
