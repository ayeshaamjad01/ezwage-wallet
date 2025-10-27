


import 'package:ezwage/ui/wallet/core/enums/load_type.dart';
import 'package:ezwage/ui/wallet/load_and_packages/view/package_input_contact_page.dart';
import 'package:ezwage/ui/wallet/load_and_packages/view/package_otp_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/enums/telecos_bill_type.dart';
import '../controller/mobile_package_controller.dart';
import '../controller/telco_bundle_provider.dart';
import '../controller/telecos_list_provider.dart';
import 'mobile_packages_page.dart';

class MobilePackagePage extends StatefulWidget {

  const MobilePackagePage({super.key, });

  @override
  State<MobilePackagePage> createState() => _MobilePackagePageState();
}

class _MobilePackagePageState extends State<MobilePackagePage> {


  @override
  Widget build(BuildContext context) {
    final pages = [
      MobilePackagesPage(),
      PackageInputContactPage(),
      PackageOtpPage(),
    ];
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MobilePackageController(
            pagesLength: pages.length,
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => TelcoBundleProvider(TeleCosBillType.bundle),
        ),
        ChangeNotifierProvider(
          create: (context) => TelecosListProvider(TeleCosBillType.bundle),
        ),
      ],
      child: Builder(
        builder: (context) {
          final currentPage = context.watch<MobilePackageController>().currentPage;
          return IndexedStack(index: currentPage, children: pages);
        },
      ),
    );
  }
}
