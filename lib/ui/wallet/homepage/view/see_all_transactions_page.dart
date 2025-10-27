import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../account_statment/dtos/customer_mini_statement_response_dto.dart';
import '../../core/constants/app_images.dart';
import '../widgets/image_decorated_container.dart';

class SeeAllTransactionsScreen extends StatelessWidget {
  final List<MiniStatementItem> transactions;

  const SeeAllTransactionsScreen({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          /// Background
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.onboardingBg),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Column(
              children: [
                50.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                      ),
                      Text(
                        "All Transactions",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 40),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// White card with list
          Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r),
                ),
              ),
              child: ListView.separated(
                itemCount: transactions.length,
                separatorBuilder: (_, __) => Divider(height: 20.h, color: Colors.grey.shade300),
                itemBuilder: (context, index) {
                  final tx = transactions[index];
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: SizedBox(
                      width: 50.w,
                      child: ImageDecoratedContainer(
                        imagePath: AppImages.debitCardIcon,
                        padding: 7.h,
                      ),
                    ),
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
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
