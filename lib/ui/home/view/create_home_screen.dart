import 'package:ezwage/ui/home/controller/home_tab_provider.dart';
import 'package:ezwage/ui/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreateHomeScreen extends StatefulWidget {
  @override
  State<CreateHomeScreen> createState() => _CreateHomeScreenState();
}

class _CreateHomeScreenState extends State<CreateHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeTabProvider>(
        create: (_) => HomeTabProvider(), child: HomeScreen());
  }
}
