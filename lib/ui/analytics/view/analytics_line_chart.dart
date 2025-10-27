// import 'package:ezwage/global/models/app_language.dart';
// import 'package:ezwage/global/utils/colors.dart';
// import 'package:ezwage/global/utils/get_month.dart';
// import 'package:ezwage/helper/application_dictionary.dart';
// import 'package:ezwage/ui/analytics/controller/analytics_provider.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:intl/intl.dart';
// import 'package:provider/provider.dart';

// class AnalyticsChart extends StatefulWidget {
//   AnalyticsChart({Key? key}) : super(key: key);

//   @override
//   State<AnalyticsChart> createState() => _AnalyticsChartState();
// }

// class _AnalyticsChartState extends State<AnalyticsChart> {
//   String? mymonth;
//   getmon(double id) {
//     print("my month is $id");

//     if (id == 0.0) {
//       mymonth = "January Month";
//     }
//     if (id == 1.0) {
//       mymonth = "February Month";
//     }
//     if (id == 2.0) {
//       mymonth = "March Month";
//     }
//     if (id == 3.0) {
//       mymonth = "April Month";
//     }
//     if (id == 4.0) {
//       mymonth = "May Month";
//     }
//     if (id == 5.0) {
//       mymonth = "June Month";
//     }
//     print("my month is $mymonth");
//   }

//   var _chartDataSpots = [];
//   var _totalMonthList = [];
//   DateTime _getLastMonth = DateTime.now();
//   var formatter = NumberFormat('#,000.00');

//   Widget bottomTitleWidgets(double value, TitleMeta meta) {
//     String text;
//     text = appLanguage == 'ur'
//         ? _totalMonthList[value.toInt()].toString()
//         : _totalMonthList[value.toInt()].toString().substring(0, 3);
//     return Padding(
//       child: Text(text,
//           style: appLanguage == 'ur'
//               ? GoogleFonts.notoNastaliqUrdu(
//                   fontSize: 8,
//                   fontWeight: FontWeight.w500,
//                   color: Color(0xff393F45),
//                 )
//               : GoogleFonts.poppins(
//                   fontSize: 10,
//                   fontWeight: FontWeight.w500,
//                   color: _totalMonthList[value.toInt()]
//                               .toString()
//                               .substring(0, 3) ==
//                           getMonthValue(_getLastMonth.month).substring(0, 3)
//                       ? newbluecolor
//                       : Color(0xff8E8E8E))),
//       padding: const EdgeInsets.only(top: 20),
//     );
//   }

//   Widget leftTitleWidgets(double value, TitleMeta meta) {
//     TextStyle style = appLanguage == 'ur'
//         ? GoogleFonts.notoNastaliqUrdu(
//             fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey)
//         : GoogleFonts.poppins(
//             fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey);
//     return Text(
//         value < 999
//             ? value.toInt().toString()
//             : value < 9999
//                 ? value.toInt().toString().substring(0, 1) + 'k'
//                 : value < 99999
//                     ? value.toInt().toString().substring(0, 2) + 'k'
//                     : value.toInt().toString().substring(0, 3) + 'k',
//         style: style);
//   }

//   @override
//   Widget build(BuildContext context) {
    // var shortestSide = MediaQuery.of(context).size.shortestSide;
//     bool _showAnalytics = context.watch<AnalyticsProvider>().showAnalytics;
//     bool _analyticsAvailable = context.watch<AnalyticsProvider>().dataAvailable;
//     bool _apiDataLoaded = context.watch<AnalyticsProvider>().apiDataLoaded;
//     double intervalValue = context.watch<AnalyticsProvider>().intervalValue;
//     if (_apiDataLoaded == false) {
//       // context.read<AnalyticsProvider>().setApiDataLoaded(true);
//       context.read<AnalyticsProvider>().getAnalyticsData(6);
//     }

//     // if (_chartDataSpots.length > 0) print(_chartDataSpots);
//     _chartDataSpots = context.watch<AnalyticsProvider>().dataSpotsList;
//     _totalMonthList = context.watch<AnalyticsProvider>().totalMonthList;
//     return _showAnalytics == true
//         ? AspectRatio(
//             aspectRatio: 1.5,
//             child: Padding(
//               padding: const EdgeInsets.only(left: 12, right: 24),
//               child: LineChart(
//                 LineChartData(
//                   lineTouchData: LineTouchData(
//                     enabled: true,
//                     getTouchLineEnd: (_, __) => double.infinity,
//                     handleBuiltInTouches: true,
//                     getTouchedSpotIndicator:
//                         (LineChartBarData barData, List<int> spotIndexes) {
//                       return spotIndexes.map((index) {
//                         return TouchedSpotIndicatorData(
//                           FlLine(
//                             color: newbluecolor,
//                             strokeWidth: 2,
//                           ),
//                           FlDotData(
//                             show: true,
//                             getDotPainter: (spot, percent, barData, index) =>
//                                 FlDotCirclePainter(
//                               radius: 5,
//                               color: backicon,
//                               strokeWidth: 1,
//                               strokeColor: Colors.white,
//                             ),
//                           ),
//                         );
//                       }).toList();
//                     },
//                     touchTooltipData: LineTouchTooltipData(
//                       maxContentWidth: 100,
//                       // showOnTopOfTheChartBoxArea: true,

//                       tooltipMargin: 10,
//                       tooltipBgColor: backicon,
//                       tooltipRoundedRadius: 8,
//                       getTooltipItems: (List<LineBarSpot> lineBarsSpot) {
//                         return lineBarsSpot.map((lineBarSpot) {
//                           getmon(lineBarSpot.x);
//                           return LineTooltipItem(
//                             lineBarSpot.y < 1000
//                                 ? '\n  PKR ' +
//                                     ((lineBarSpot.y) < 999
//                                         ? lineBarSpot.y.toInt().toString()
//                                         : lineBarSpot.y < 9999
//                                             ? lineBarSpot.y
//                                                     .toInt()
//                                                     .toString()
//                                                     .substring(0, 1) +
//                                                 'k'
//                                             : lineBarSpot.y < 99999
//                                                 ? lineBarSpot.y
//                                                         .toInt()
//                                                         .toString()
//                                                         .substring(0, 2) +
//                                                     'k'
//                                                 : lineBarSpot.y
//                                                         .toInt()
//                                                         .toString()
//                                                         .substring(0, 3) +
//                                                     'k') +
//                                     "  \n"
//                                 : '\n  PKR ' +
//                                     ((lineBarSpot.y) < 999
//                                         ? lineBarSpot.y.toInt().toString()
//                                         : lineBarSpot.y < 9999
//                                             ? lineBarSpot.y
//                                                     .toInt()
//                                                     .toString()
//                                                     .substring(0, 1) +
//                                                 'k'
//                                             : lineBarSpot.y < 99999
//                                                 ? lineBarSpot.y
//                                                         .toInt()
//                                                         .toString()
//                                                         .substring(0, 2) +
//                                                     'k'
//                                                 : lineBarSpot.y
//                                                         .toInt()
//                                                         .toString()
//                                                         .substring(0, 3) +
//                                                     'k') +
//                                     "  \n",
//                             const TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 10,
//                                 height: 0.8,
//                                 fontWeight: FontWeight.bold),
//                           );
//                         }).toList();
//                       },
//                     ),
//                   ),

//                   borderData: FlBorderData(
//                     show: true,
//                     border: Border(
//                       left: BorderSide(
//                           color: greycolor.withOpacity(0.5), width: 1),
//                       right: BorderSide(
//                         width: 1,
//                         color: greycolor.withOpacity(0.5),
//                       ),
//                     ),
//                   ),

//                   lineBarsData: [
//                     LineChartBarData(
//                       spots: [..._chartDataSpots],
//                       isCurved: false,
//                       show: true,
//                       barWidth: 2.5,
//                       color: backicon,
//                       dotData: FlDotData(
//                         show: false,
//                       ),
//                     ),
//                   ],

//                   minY: 0,

//                   titlesData: FlTitlesData(
//                     show: true,
//                     topTitles: AxisTitles(
//                       sideTitles: SideTitles(showTitles: false),
//                     ),
//                     rightTitles: AxisTitles(
//                       sideTitles: SideTitles(showTitles: false),
//                     ),
//                     bottomTitles: AxisTitles(
//                       sideTitles: SideTitles(
//                         showTitles: true,
//                         reservedSize: 50,
//                         interval: 1,
//                         getTitlesWidget: bottomTitleWidgets,
//                       ),
//                     ),
//                     leftTitles: AxisTitles(
//                       axisNameSize: 20,
//                       sideTitles: SideTitles(
//                         showTitles: true,
//                         interval: intervalValue,
//                         reservedSize: 50,
//                         getTitlesWidget: leftTitleWidgets,
//                       ),
//                     ),
//                   ),
//                   gridData: FlGridData(
//                     show: true,
//                     horizontalInterval: 1,
//                     verticalInterval: 1,
//                     getDrawingVerticalLine: (value) {
//                       return FlLine(
//                         color: greycolor.withOpacity(0.5),
//                         strokeWidth: 1,
//                       );
//                     },
//                     getDrawingHorizontalLine: (value) {
//                       return FlLine(
//                         color: greycolor.withOpacity(0.5),
//                         strokeWidth: 1,
//                       );
//                     },
//                     checkToShowHorizontalLine: (double value) {
//                       return value == 250000 ||
//                           value == 200000 ||
//                           value == 150000 ||
//                           value == 100000 ||
//                           value == 50000 ||
//                           value == 1;
//                     },
//                   ),
//                 ),
//               ),
//             ),
//           )
//         : _analyticsAvailable == false
//             ? Padding(
//                 padding: const EdgeInsets.only(bottom: 20.0),
//                 child: Text(
//                   translateText('Analytics_Data_not_Available'),
//                 ),
//               )
//             : Column();
//   }
// }
