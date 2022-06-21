import 'package:financial_app/ui/screens/HomeScreen/home_screen.dart';
import 'package:financial_app/ui/screens/SignUpScreen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:financial_app/ui/screens/LoginScreen/login_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Financial App',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/homeScreen': (context) => HomeScreen(),
        '/signUpScreen': (context) => SignUpScreen(),
      },
    );
  }
}

