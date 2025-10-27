import 'package:ezwage/ui/recent_transactions/controller/recent_transactions_provider.dart';
import 'package:ezwage/ui/recent_transactions/view/recent_transactions_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecentTransactionsView extends StatefulWidget {
  @override
  _recenttransactionviewState createState() => _recenttransactionviewState();
}

class _recenttransactionviewState extends State<RecentTransactionsView> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RecentTransactionsProvider>(
        create: (_) => RecentTransactionsProvider(),
        child: RecentTransactionsList());
  }
}
