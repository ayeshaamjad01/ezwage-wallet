import 'package:ezwage/ui/wallet/load_and_packages/view/mobile_topup/topup_appbar_view.dart';
import 'package:flutter/material.dart';

class BillOtpPage extends StatefulWidget {
  const BillOtpPage({super.key});

  @override
  State<BillOtpPage> createState() => _BillOtpPageState();
}

class _BillOtpPageState extends State<BillOtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
                    TopUpAppBarView(),
                  ],
      ),
    );
  }
}
