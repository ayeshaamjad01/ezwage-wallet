import 'dart:math';

import 'package:charts_flutter_new/flutter.dart';
import 'package:ezwage/global/utils/get_month.dart';
import 'package:ezwage/ui/accounts/models/Ordinal_Transactions.dart';
import 'package:ezwage/ui/analytics/controller/analytics_provider.dart';
import 'package:ezwage/ui/analytics/view/custom_domain_highlighter.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:charts_flutter_new/src/text_style.dart' as style;
import 'package:charts_flutter_new/src/text_element.dart' as textelement;

// ignore: must_be_immutable
class AnalyticsBarChart extends StatefulWidget {
  int? monthRange;
  AnalyticsBarChart(this.monthRange);
  @override
  State<AnalyticsBarChart> createState() => _AnalyticsBarChartState();
}

class _AnalyticsBarChartState extends State<AnalyticsBarChart> {
  final valueFormatter = charts.BasicNumericTickFormatterSpec.fromNumberFormat(
      NumberFormat.compact());
  @override
  void initState() {
    super.initState();
    context
        .read<AnalyticsProvider>()
        .getAnalyticsData(widget.monthRange!, context);
  }

  var formatter = NumberFormat('#,000.00');
  var _ordinalData;
  DateTime currentDateTime = DateTime.now();
  List<charts.Series<OrdinalTransactions, String>> createSampleData() {
    List<OrdinalTransactions> data = [..._ordinalData];

    return [
      new charts.Series<OrdinalTransactions, String>(
        id: 'transactionsAnalytics',
        domainFn: (OrdinalTransactions transactionsAnalytics, _) =>
            transactionsAnalytics.month,
        measureFn: (OrdinalTransactions transactionsAnalytics, _) =>
            transactionsAnalytics.transactions,
        data: data,
        insideLabelStyleAccessorFn: (OrdinalTransactions transactions, _) {
          final color = (transactions.month ==
                  getMonthValue(currentDateTime.month)
                      .toString()
                      .substring(0, 3))
              ? charts.Color.transparent
              : charts.Color.transparent;
          return new charts.TextStyleSpec(color: color);
        },
        outsideLabelStyleAccessorFn: (OrdinalTransactions transactions, _) {
          final color = (transactions.month ==
                  getMonthValue(currentDateTime.month)
                      .toString()
                      .substring(0, 3))
              ? charts.Color.transparent
              : charts.Color.transparent;
          return new charts.TextStyleSpec(
            color: color,
          );
        },
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    bool _apiDataLoaded = context.watch<AnalyticsProvider>().apiDataLoaded;
    _ordinalData = context.watch<AnalyticsProvider>().showOrdinalDataList;
    return Column(
      children: [
        if (_apiDataLoaded == true)
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: shortestSide > 600 ? 250.sp : 300,
              child: charts.BarChart(
                createSampleData(),
                //             primaryMeasureAxis:   primaryYAxis: NumericAxis(
                //   numberFormat: NumberFormat.compact(),
                // ),
                primaryMeasureAxis: charts.NumericAxisSpec(
                  tickFormatterSpec: valueFormatter,
                ),

// primaryMeasureAxis: new charts.NumericAxisSpec(tickProviderSpec:
//                 new charts.BasicNumericTickProviderSpec(zeroBound: false)),
//                 secondaryMeasureAxis: new charts.NumericAxisSpec(tickProviderSpec:
//                 new charts.BasicNumericTickProviderSpec(zeroBound: false)),
                domainAxis: new charts.OrdinalAxisSpec(
                    renderSpec: new charts.SmallTickRendererSpec(
                  //  labelRotation: 90,
                  axisLineStyle: charts.LineStyleSpec(
                      color: charts.Color.fromHex(code: '#FFFFFF'),
                      thickness: 1),
                  lineStyle: charts.LineStyleSpec(
                      color: charts.Color.fromHex(code: '#FFFFFF'),
                      thickness: 1),
                  labelStyle: new charts.TextStyleSpec(
                      lineHeight: 2,
                      fontSize: shortestSide > 600 ? 30 : 12, // size in Pts.
                      color:
                          // (charts ==
                          //     getMonthValue(currentDateTime.month)
                          //         .toString()
                          //         .substring(0, 3))
                          // ?
                          charts.Color.fromHex(code: '#8E8E8E')
                      // : charts.Color.fromHex(code: '#000000')
                      ),
                )),

                animate: true,

                selectionModels: [
                  SelectionModelConfig(
                    changedListener: (SelectionModel model) {
                      if (model.hasDatumSelection) {
                        final value = model.selectedSeries[0]
                            .measureFn(model.selectedDatum[0].index);
                        String fomatedValue;
                        if (value! < 1000) {
                          fomatedValue = value.round().toString();
                        } else {
                          String a = value < 999
                              ? value.toInt().toString()
                              : value < 9999
                                  ? value.toInt().toString().substring(0, 1) +
                                      '.' +
                                      value.toInt().toString().substring(1, 2) +
                                      'K'
                                  : value < 99999
                                      ? value
                                              .toInt()
                                              .toString()
                                              .substring(0, 2) +
                                          '.' +
                                          value
                                              .toInt()
                                              .toString()
                                              .substring(2, 3) +
                                          'K'
                                      : value
                                              .toInt()
                                              .toString()
                                              .substring(0, 3) +
                                          '.' +
                                          value
                                              .toInt()
                                              .toString()
                                              .substring(3, 4) +
                                          'K';
                          fomatedValue = a;
                        }

                        CustomCircleSymbolRenderer.value =
                            fomatedValue; // paints the tapped value

                      }
                    },
                  )
                ],
                behaviors: [
                  CustomDomainHighlighter(),
                  charts.SelectNearest(
                    eventTrigger: charts.SelectionTrigger.tapAndDrag,
                  ),
                  LinePointHighlighter(
                      drawFollowLinesAcrossChart: false,
                      showHorizontalFollowLine:
                          LinePointHighlighterFollowLineType.none,
                      showVerticalFollowLine:
                          LinePointHighlighterFollowLineType.none,
                      defaultRadiusPx: 0,
                      radiusPaddingPx: 0,
                      symbolRenderer: CustomCircleSymbolRenderer())
                ],
                defaultRenderer: new charts.BarRendererConfig(
                  //  maxBarWidthPx: 40,

                  barRendererDecorator: new charts.BarLabelDecorator<String>(),
                  cornerStrategy: const charts.ConstCornerStrategy(5),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class CustomCircleSymbolRenderer extends CircleSymbolRenderer {
  var formatter = NumberFormat('#,000.00');
  static String? value;

  @override
  void paint(ChartCanvas canvas, Rectangle<num> bounds,
      {List<int>? dashPattern,
      Color? fillColor,
      FillPatternType? fillPattern,
      Color? strokeColor,
      double? strokeWidthPx}) {
    super.paint(canvas, bounds,
        dashPattern: dashPattern,
        fillColor: fillColor,
        strokeColor: Color.transparent,
        strokeWidthPx: 0);
    canvas.drawRRect(
        Rectangle(
          bounds.left - 44,
          bounds.top - 35,
          bounds.width + 90,
          bounds.height + 30,
        ),
        roundBottomLeft: true,
        roundBottomRight: true,
        roundTopLeft: true,
        roundTopRight: true,
        radius: 5,
        stroke: Color.transparent,
        strokeWidthPx: 40,
        patternStrokeWidthPx: 40,
        fill: Color.fromHex(code: '#E7309E'));
    var textStyle = style.TextStyle();
    textStyle.color = Color.fromHex(code: '#FFFFFF');

    textStyle.fontSize = 12;
    canvas.drawText(
      textelement.TextElement("PKR ${value!}", style: textStyle),
      (bounds.right - 25).round(),
      (bounds.top - 25).round(),
    );
  }
}

class LinearSales {
  final int year;
  final int sales;
  LinearSales(this.year, this.sales);
}
