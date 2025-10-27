import 'package:ezwage/global/models/balance.dart';
import 'package:ezwage/global/views/custom_size_box.dart';
import 'package:ezwage/ui/extended_features/extended_features.dart';
import 'package:ezwage/ui/accounts/view/accounts_view.dart';
// import 'package:ezwage/ui/authentication/model/login_model.dart';
// import 'package:ezwage/ui/home/view/setup_pin.dart';
import 'package:ezwage/ui/recent_transactions/view/recent_transaction_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:ezwage/ui/profile/model/profile_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _homeviewState createState() => _homeviewState();
}

class _homeviewState extends State<HomeView> {
  var formatter = NumberFormat('#,000');
  String? currentBalanceInAccount;
  String? currentEmpSalary;
  String? currentWithdraw;
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    if (BalanceModel.currentbalance != null) {
      if (double.parse(BalanceModel.currentbalance!) > 99)
        currentBalanceInAccount = formatter
            .format(double.parse(BalanceModel.currentbalance!))
            .toString();
      else
        currentBalanceInAccount = BalanceModel.currentbalance!;
    }
    if (ProfileModel.salary != null && BalanceModel.currentbalance != null) {
      if (double.parse(BalanceModel.currentbalance!) > 99)
        currentEmpSalary =
            formatter.format(double.parse(ProfileModel.salary!)).toString();
      else
        currentEmpSalary = ProfileModel.salary!;
    }
    if (BalanceModel.totalWithdarw != null) {
      if (BalanceModel.totalWithdarw! > 99)
        currentWithdraw =
            formatter.format(BalanceModel.totalWithdarw!.round()).toString();
      else
        currentWithdraw = BalanceModel.totalWithdarw!.round().toString();
    }

    return Expanded(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: shortestSide > 600 ? 12.sp : 15.0),
        child: ListView(
          children: [
            // if (LoginModel.pinCheck == '0') CustomSizeBox(15),
            // if (LoginModel.pinCheck == '0') SetUpPin(),
            // if (LoginModel.pinCheck == '0') Divider(),
            CustomSizeBox(15),
            ExtendedFeatures(),
            Divider(),
            CustomSizeBox(15),
            AccountsView(),
            Divider(),
            CustomSizeBox(15),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: RecentTransactionsView(),
            ),
            CustomSizeBox(100),
          ],
        ),
      ),
    );
  }
}
