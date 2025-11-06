import 'package:device_preview/device_preview.dart';
import 'package:ezwage/global/app_startup/app_startup_configuration.dart';
import 'package:ezwage/global/firebase/firebase_configuration.dart';
import 'package:ezwage/global/models/app_language.dart';
import 'package:ezwage/global/utils/set_logout_time.dart';
import 'package:ezwage/helper/locale_provider.dart';
import 'package:ezwage/ui/accounts/controllers/account_view_controller.dart';
import 'package:ezwage/ui/email_contact/controller/email_controller.dart';
import 'package:ezwage/ui/splash_screen/view/splash_view.dart';
import 'package:ezwage/ui/wallet/bill_and_fees/controller/bill_payment_provider.dart';
import 'package:ezwage/ui/wallet/homepage/controller/wallet_homepage_provider.dart';
import 'package:ezwage/ui/wallet/load_and_packages/controller/load_and_package_provider.dart';
import 'package:ezwage/ui/wallet/load_and_packages/view/load_and_packages_page.dart';
import 'package:ezwage/ui/wallet/topup_and_request/controller/topup_request_provider.dart';
import 'package:ezwage/ui/wallet/transfer/controller/bank_transfer_provider.dart';
import 'package:ezwage/ui/wallet/transfer/controller/contacts_provider.dart';
import 'package:ezwage/ui/wallet/transfer/controller/transfer_provider.dart';
import 'package:ezwage/ui/wallet/transfer/controller/wallet_transfer_provider.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/controller/wallet_onboarding_provider.dart';
import 'package:ezwage/ui/wallet/wallet_onboarding/view/wallet_onboading.dart';
import 'package:ezwage/ui/withdraw/controller/withdraw_controller.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'ui/wallet/service_locator/service_locator.dart';
//03267474179
// 03987816680
// 2nd
// 03097816680
// bdestination bank
// 0002000001100111
//creds
// 03267474719
// 3110281534125

// 03267474717
// 3110281534126

// 03987816680
// 3110206052789

// 03987816680
// 3110206052788
// 06121110044300

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppStartupConfiguration.doConfigurations();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await initDependencies();
  // await dotenv.load(fileName: ".env");
  try {
    await dotenv.load(fileName: "assets/.env");
  } catch (e) {
    debugPrint("⚠️ .env file missing. Using fallback configs.");
  }

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  // PlatformDispatcher.instance.onError = (error, stack) {
  //   FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  //   return true;
  // };
  runApp(
    DevicePreview(
      enabled: false,
      tools: const [...DevicePreview.defaultTools],
      builder: (context) => const MyApp(),
    ),
    // MyApp(),
  );
}

changeLogoutTime() {
  setLogoutTime = DateTime.now();
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    FirebaseConfiguration.firbaseInitState();
  }

  @override
  Widget build(BuildContext context) {
    // LocalJsonLocalization.delegate.directories = ['lib/i18n'];
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LocaleProvider()),
        ChangeNotifierProvider(create: (_) => Counter()),
        ChangeNotifierProvider(create: (_) => AccountsController()),
        ChangeNotifierProvider(create: (_) => EmailProvider()),

        //wallet providers
        // ChangeNotifierProvider(create: (_) => WalletOnboardingProvider()),
        ChangeNotifierProvider(create: (_) => TransferProvider()),
        ChangeNotifierProvider(create: (_) => LoadAndPackageProvider()),
        ChangeNotifierProvider(create: (_) => TopUpRequestProvider()),
        ChangeNotifierProvider(create: (_) => WalletTransferProvider()),
        ChangeNotifierProvider(create: (_) => BankTransferProvider()),
        ChangeNotifierProvider(create: (_) => ContactsProvider()),
      ],
      child: Consumer<LocaleProvider>(
        builder: (context, provider, snapshot) {
          return Listener(
            onPointerDown: (_) => changeLogoutTime(),
            onPointerMove: (_) => changeLogoutTime(),
            onPointerUp: (_) => changeLogoutTime(),
            child: MaterialApp(
              builder: EasyLoading.init(),
              // ignore: unnecessary_null_comparison
              locale: appLanguage == null
                  ? Locale(context.watch<LocaleProvider>().selectedLocale)
                  : Locale(appLanguage),
              localizationsDelegates: [
                // delegate from flutter_localization
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                // delegate from localization package.
              ],
              supportedLocales: [Locale('en'), Locale('ur')],
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                canvasColor: Colors.transparent,
                primarySwatch: Colors.blue,
              ),
              home: SplashScreen(),
              // home:
              // WalletOnboading(),
            ),
          );
        },
      ),
    );
  }
}
