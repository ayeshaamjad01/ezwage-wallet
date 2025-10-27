import 'package:ezwage/ui/analytics/controller/analytics_date_range_provider.dart';
import 'package:ezwage/ui/analytics/controller/analytics_provider.dart';
import 'package:ezwage/ui/analytics/view/analytics_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreateAnalyticsScreen extends StatefulWidget {
  @override
  State<CreateAnalyticsScreen> createState() => _CreateAnalyticsScreenState();
}

class _CreateAnalyticsScreenState extends State<CreateAnalyticsScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => AnalyticsDateRangeProvider()),
          ChangeNotifierProvider(create: (_) => AnalyticsProvider()),
        ],
        child: Consumer<AnalyticsDateRangeProvider>(
            builder: (context, provider, snapshot) {
          return AnalyticsScreen();
        }));
  }
}
