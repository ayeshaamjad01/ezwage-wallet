import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavButton extends StatelessWidget {
  final double position;
  final int length;
  final int index;
  final ValueChanged<int> onTap;
  final Widget child;
  final int currentIndex;
  NavButton({
    required this.onTap,
    required this.position,
    required this.length,
    required this.index,
    required this.child,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    final desiredPosition = 1.0 / length * index;
    final difference = (position - desiredPosition).abs();
    final verticalAlignment = 1 - length * difference;
    final opacity = length * difference;
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          onTap(index);
        },
        child: Column(
          children: [
            Container(
                height: 75.0,
                child: Transform.translate(
                  offset: Offset(0,
                      difference < 1.0 / length ? verticalAlignment * 40 : 0),
                  child: Opacity(
                      opacity: difference < 1.0 / length * 0.99 ? opacity : 1.0,
                      child: child),
                )),
            Text(
              translateText(index == 0
                  ? 'Learn'
                  : index == 1
                      ? 'EZ_Services'
                      : index == 2
                          ? 'Home'
                          : index == 3
                              ? 'History'
                              : 'Support'),
              style: appLanguage == 'ur'
                  ? GoogleFonts.notoNastaliqUrdu(
                      fontSize: 8,
                      fontWeight: FontWeight.w500,
                      color: currentIndex == index
                          ? const Color(0xffEC0B8D)
                          : const Color(0xffC4C4C4))
                  : GoogleFonts.poppins(
                      fontSize: 9.3,
                      fontWeight: FontWeight.w500,
                      color: currentIndex == index
                          ? const Color(0xffEC0B8D)
                          : const Color(0xffC4C4C4)),
             textScaleFactor: 1,
            ),
          ],
        ),
      ),
    );
  }
}
