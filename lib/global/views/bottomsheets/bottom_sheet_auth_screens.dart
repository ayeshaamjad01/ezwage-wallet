import 'package:ezwage/global/utils/colors.dart';
import 'package:flutter/material.dart';

class BottomSheetAuthScreen extends StatefulWidget {
  final Column upercol;
  final Column lowercol;
  final VoidCallback func;
  final bool lowercolumenable;
  final bool bankscreen;
  const BottomSheetAuthScreen(this.upercol, this.lowercol, this.func,
      this.lowercolumenable, this.bankscreen);

  @override
  _BottomSheetAuthScreenState createState() => _BottomSheetAuthScreenState();
}

class _BottomSheetAuthScreenState extends State<BottomSheetAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  color: bottomSheetContianerColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              height: (widget.bankscreen == false)
                  ? MediaQuery.of(context).size.height / 1.35
                  : MediaQuery.of(context).size.height / 1.5,
            ),
          ),
          SizedBox(
            height: (widget.bankscreen == false)
                ? MediaQuery.of(context).size.height / 1.35
                : MediaQuery.of(context).size.height / 1.5,
            child: ListView(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                      right: 25,
                    ),
                    child: Stack(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 18.0,
                                  top: 2.0,
                                ),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.1,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                      color: bottomSheetContianerColor,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0,
                                        right: 15,
                                        top: 10,
                                        bottom: 0),
                                    child: widget.upercol,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                          visible: widget.bankscreen,
                          child: Positioned.fill(
                            top: 0,
                            // left: 0,
                            // right: 0,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                // height: 30,
                                // width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: greenColor),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.done,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: widget.func,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: bottomSheetContianerColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: roundbuttonColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: RotatedBox(
                                      quarterTurns: 2,
                                      child: Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: (widget.lowercolumenable == true)
                ? SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 25.0, right: 25, bottom: 0, top: 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.15,
                        decoration: BoxDecoration(
                            boxShadow: [],
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: widget.lowercol,
                        ),
                      ),
                    ),
                  )
                : Container(),
          ),
        ],
      ),
    );
  }
}
