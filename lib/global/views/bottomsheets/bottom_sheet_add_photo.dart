import 'package:ezwage/global/utils/custom_cliper.dart';
import 'package:flutter/material.dart';

class BottomSheetAddPhoto extends StatefulWidget {
  final Column upercol;

  const BottomSheetAddPhoto(
    this.upercol,
  );

  @override
  _BottomSheetAddPhotoState createState() => _BottomSheetAddPhotoState();
}

class _BottomSheetAddPhotoState extends State<BottomSheetAddPhoto> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.2,
      child: Scaffold(
        // bottomNavigationBar: Bottomnavbar(context),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: ClipPath(
                clipper: CustomizedClipper('Profile'),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height,
                ),
              ),
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
                        width: MediaQuery.of(context).size.width / 1.15,
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
