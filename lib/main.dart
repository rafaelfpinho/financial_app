import 'package:financial_app/ui/screens/AddExpenseScreen/add_expense_screen.dart';
import 'package:financial_app/ui/screens/ExpenseDetailsScreen/expense_details_screen.dart';
import 'package:financial_app/ui/screens/ForgotPassword/forgot_password_screen.dart';
import 'package:financial_app/ui/screens/HomeScreen/home_screen.dart';
import 'package:financial_app/ui/screens/InitialScreen/initial_screen.dart';
import 'package:financial_app/ui/screens/SettingsScreen/settings_screen.dart';
import 'package:financial_app/ui/screens/SignUpScreen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:financial_app/ui/screens/LoginScreen/login_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:financial_app/ui/config/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Financial App',
      theme: lightTheme,
      darkTheme: lightTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        InitialScreen.routeName: (context) => InitialScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SignUpScreen.routeName: (context) => SignUpScreen(),
        ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
        SettingsScreen.routeName: (context) => SettingsScreen(),
        ExpanseDetailsScreen.routeName: (context) => ExpanseDetailsScreen(),
        AddExpenseScreen.routeName: (context) => AddExpenseScreen()
      },
    );
  }
}

