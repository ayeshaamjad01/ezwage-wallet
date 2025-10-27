import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/helper/application_dictionary.dart';
import 'package:ezwage/ui/analytics/view/analytics_bar_chart.dart';
import 'package:ezwage/ui/recent_transactions/view/recent_transaction_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class AnalyticsView extends StatefulWidget {
  int? monthRange;
  AnalyticsView(this.monthRange);

  @override
  _analyticsviewState createState() => _analyticsviewState();
}

class _analyticsviewState extends State<AnalyticsView> {
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;

    return Padding(
      padding: EdgeInsets.fromLTRB(
          shortestSide > 600 ? 8.sp : 0.0,
          shortestSide > 600 ? 8.sp : 0.0,
          shortestSide > 600 ? 15.sp : 0.0,
          shortestSide > 600 ? 8.sp : 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Container(
              width: double.infinity,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomSizeBox(20),
                      Text(
                        translateText('Transactions_Statistics'),
                        style: appLanguage == 'ur'
                            ? GoogleFonts.notoNastaliqUrdu(
                                fontSize: shortestSide > 600 ? 11.sp : 11,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              )
                            : GoogleFonts.poppins(
                                fontSize: shortestSide > 600 ? 12.sp : 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff1C1C1C)),
                      ),
                      CustomSizeBox(shortestSide > 600 ? 12.sp : 20),
                      AnalyticsBarChart(widget.monthRange),
                      CustomSizeBox(10),
                    ]),
              ),
            ),
          ),
          CustomSizeBox(30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RecentTransactionsView(),
          ),
          CustomSizeBox(200),
        ],
      ),
    );
  }
}
