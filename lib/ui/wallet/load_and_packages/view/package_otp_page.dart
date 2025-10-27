import 'package:ezwage/ui/wallet/load_and_packages/view/mobile_topup/topup_appbar_view.dart';
import 'package:flutter/material.dart';

class PackageOtpPage extends StatefulWidget {
  const PackageOtpPage({super.key});

  @override
  State<PackageOtpPage> createState() => _PackageOtpPageState();
}

class _PackageOtpPageState extends State<PackageOtpPage> {
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
