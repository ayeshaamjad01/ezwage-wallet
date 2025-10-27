import 'package:flutter/material.dart';

class BottomSheetWithLogo extends StatefulWidget {
  final Column upercol;

  const BottomSheetWithLogo(
    this.upercol,
  );

  @override
  _BottomSheetWithLogoState createState() => _BottomSheetWithLogoState();
}

class _BottomSheetWithLogoState extends State<BottomSheetWithLogo> {
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.12,
      child: Scaffold(
        // bottomNavigationBar: Bottomnavbar(context),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  height: double.infinity),
            ),
            Positioned(
              top: 0,
              // left: 0,
              // right: 0,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 25.0,
                  right: 25,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          // bottom: 18.0,
                          // top: 30.0,
                          ),
                      child: Container(
                        width: shortestSide < 600
                            ? MediaQuery.of(context).size.width / 1.15
                            : MediaQuery.of(context).size.width / 1.05,
                        decoration: BoxDecoration(
                            boxShadow: [],
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 1.1,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: widget.upercol,
                              ),
                              // Positioned(
                              //     bottom: 0,
                              //     child: customButton(
                              //       "text",
                              //       () {},
                              //     ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
