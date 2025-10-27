import 'package:ezwage/ui/transaction_details/model/transaction_type.dart';
import 'package:ezwage/ui/transaction_details/view/transaction_details_screen.dart';
import 'package:flutter/material.dart';

void navigateToTransactionDetailsScreen(
    BuildContext context,
    var userTransactionDetails,
    String transactionDetailsType,
    TransactionType transactionType) {
  // Navigator.pop(context);
  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => TransactionDetailsScreen(
          userTransactionDetails, transactionDetailsType, transactionType)));
}
