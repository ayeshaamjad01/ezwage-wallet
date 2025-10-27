import 'package:ezwage/ui/history/view/history_screen.dart';
import 'package:ezwage/ui/recent_transactions/controller/recent_transactions_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreateHistoryScreen extends StatefulWidget {
  @override
  State<CreateHistoryScreen> createState() => _CreateHistoryScreenState();
}

class _CreateHistoryScreenState extends State<CreateHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => RecentTransactionsProvider()),
        ],
        child: Consumer<RecentTransactionsProvider>(
            builder: (context, provider, snapshot) {
          return HistoryScreen();
        }));
  }
}
