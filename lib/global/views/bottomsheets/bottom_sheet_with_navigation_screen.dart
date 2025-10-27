import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/colors.dart';
import 'package:flutter/material.dart';

class BottomSheetWithNavigationScreen extends StatefulWidget {
  const BottomSheetWithNavigationScreen(
    this.upercol,
    this.cont,
  );
  final Container cont;
  final Column upercol;

  @override
  _BottomSheetWithNavigationScreenState createState() =>
      _BottomSheetWithNavigationScreenState();
}

class _BottomSheetWithNavigationScreenState
    extends State<BottomSheetWithNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.2 +
          MediaQuery.of(context).viewInsets.bottom,
      child: Scaffold(
        // bottomNavigationBar: Bottomnavbar(context),
        body: Container(
          child: Stack(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: bottomSheetContianerColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
              ),
              Positioned(
                top: 5.0,
                child: Container(
                  child: Padding(
                    padding: (appLanguage == 'ur')
                        ? const EdgeInsets.only(
                            left: 12,
                            right: 8,
                          )
                        : const EdgeInsets.only(
                            left: 12,
                            right: 20,
                          ),
                    child: Stack(
                      children: [
                        Container(
                          child: Container(
                            width: shortestSide > 600
                                ? MediaQuery.of(context).size.width
                                : MediaQuery.of(context).size.width / 1.06,
                            decoration: BoxDecoration(
                                boxShadow: [],
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 2.8),
                                  child: widget.cont,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 1.1,
                                  child: ListView(
                                    children: [
                                      widget.upercol,
                                    ],
                                  ),
                                  // Positioned(
                                  //     bottom: 0,
                                  //     child: customButton(
                                  //       "text",
                                  //       () {},
                                  //     ))
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
