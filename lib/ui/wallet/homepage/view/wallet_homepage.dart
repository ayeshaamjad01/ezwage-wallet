import 'package:ezwage/ui/wallet/homepage/controller/wallet_homepage_provider.dart';
import 'package:ezwage/ui/wallet/homepage/view/wallet_page_content.dart';
import 'package:ezwage/ui/wallet/service_locator/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WalletHomepage extends StatefulWidget {
  const WalletHomepage({super.key});

  @override
  State<WalletHomepage> createState() => _WalletHomepageState();
}

class _WalletHomepageState extends State<WalletHomepage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WalletHomepageProvider(sL()),
      child: Builder(
        builder: (context) {
          return WalletPageContent(
            provider: context.read<WalletHomepageProvider>(),
          );
        },
      ),
    );
  }
}
