import 'package:ezwage/ui/wallet/custom_widgets/custom_app_bar.dart';
import 'package:ezwage/ui/wallet/load_and_packages/controller/mobile_topup_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopUpAppBarView extends StatefulWidget {
  const TopUpAppBarView({super.key});

  @override
  State<TopUpAppBarView> createState() => _TopUpAppBarViewState();
}

class _TopUpAppBarViewState extends State<TopUpAppBarView> {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: "Load & Packages",
      onTap: () {
        final provider = context.read<MobileTopUpController>();
        final currentPage = provider.currentPage;
        if (currentPage < 1) {
          Navigator.of(context).pop();
          return;
        }
        provider.navToPreviousPage();
      },
    );
  }
}
