import 'package:ezwage/ui/authentication/controller/login_provider.dart';
import 'package:ezwage/ui/authentication/view/authscreen_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthScreenCreate extends StatefulWidget {
  @override
  State<AuthScreenCreate> createState() => _AuthScreenCreateState();
}

class _AuthScreenCreateState extends State<AuthScreenCreate> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => LoginProvider()),
        ],
        child: Consumer<LoginProvider>(builder: (context, provider, snapshot) {
          return AuthScreen();
        }));
  }
}
