

import 'package:ezwage/ui/wallet/homepage/controller/wallet_homepage_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../account_statment/dtos/customer_mini_statement_response_dto.dart';
import '../../core/constants/app_images.dart';
import '../view/see_all_transactions_page.dart';
import 'image_decorated_container.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final homePro = context.watch<WalletHomepageProvider>();

    // final transactions = [
    //   {
    //     "title": "Transfer",
    //     "date": "Yesterday · 19:12",
    //     "amount": "-PKR 600.00",
    //     "color": Colors.red,
    //     "icon": AppImages.transferColoredIcon,
    //   },
    //   {
    //     "title": "Top Up",
    //     "date": "May 29, 2023 · 19:12",
    //     "amount": "+PKR 260.00",
    //     "color": Colors.green,
    //     "icon": AppImages.topUp,
    //   },
    //   {
    //     "title": "Internet",
    //     "date": "May 16, 2023 · 17:34",
    //     "amount": "-PKR 350.00",
    //     "color": Colors.red,
    //     "icon": AppImages.withdrawIcon,
    //   },
    // ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Lastest Transaction",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SeeAllTransactionsScreen(transactions: homePro.customerMiniStatementResponseDto?.transactionList ?? []),
                    ),
                  );
                },
                child: seeAllText(),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          ...homePro.customerMiniStatementResponseDto?.transactionList
              .map((tx) => _TransactionTile(tx))
              .toList()
              ?? []        ],
      ),
    );
  }
  Row seeAllText() {
    return Row(
      children: [
        Text(
          "See all",
          style: TextStyle(color: Colors.green, fontSize: 16.sp),
        ),
        4.horizontalSpace,
        Icon(Icons.arrow_forward, color: Colors.green, size: 16.h,)
      ],
    );
  }
}

class _TransactionTile extends StatelessWidget {
  final MiniStatementItem tx;

  const _TransactionTile(this.tx);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SizedBox(width: 50.w, child: ImageDecoratedContainer(imagePath: AppImages.debitCardIcon, padding: 7.h,)),
      // CircleAvatar(
      //   backgroundColor: Colors.grey.shade200,
      //   child: Icon(tx['icon'], color: Colors.blue),
      // ),
      title: Text(
        tx.trxName,
        style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        tx.transactionDateTime,
        style: TextStyle(fontSize: 12.sp, color: Colors.grey),
      ),
      trailing: Text(
        tx.trxAmount,
        style: TextStyle(
          color: (tx.trxType == TrxType.debit) ? Colors.red : Colors.green,
          fontWeight: FontWeight.bold,
          fontSize: 14.sp,
        ),
      ),
    );
  }
}