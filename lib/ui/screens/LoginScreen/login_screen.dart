import 'package:financial_app/ui/screens/HomeScreen/home_screen.dart';
import 'package:financial_app/ui/screens/SignUpScreen/signup_screen.dart';
import 'package:financial_app/ui/screens/custom_input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/loginScreen";
  static const String TAG = "[LOGIN_SCREEN]";

  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _EmailField(),
            const SizedBox(height: 16),
            _PasswordField(),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 36, right: 36, top: 12),
              child: _LoginButton(),
            ),
            _RegisterButton(),
          ],
        ),
      ),
    );
  }
}

class _EmailField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomInputTextField(
        title: AppLocalizations
            .of(context)
            .email,
        textInputType: TextInputType.emailAddress,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 16, fontWeight:
            FontWeight.w700
        ),
        onChanged: (email) => {
      print("email changed: $email")
    });
  }
}

class _PasswordField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomInputTextField(
        title: AppLocalizations
            .of(context)
            .password,
        textInputType: TextInputType.text,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 16, fontWeight:
        FontWeight.w700
        ),
        obscureText: true,
        onChanged: (password) => {print("password changed: $password")});
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.blueAccent,
      height: 48,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      onPressed: () => {Navigator.of(context).pushNamed(HomeScreen.routeName)},
      child: Text(AppLocalizations
          .of(context)
          .login),
      textColor: Colors.white,
    );
  }
}

class _RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(AppLocalizations
              .of(context)
              .loginScreenRegisterAlert,
            style: const TextStyle(
                color: Colors.white
            ),),
          const SizedBox(width: 4),
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(SignUpScreen.routeName);
              },
              child: Text(
                AppLocalizations
                    .of(context)
                    .signUp,
                style:
                TextStyle(color: Colors.blueAccent),
              ))
        ],
      ),
    );
  }
}
