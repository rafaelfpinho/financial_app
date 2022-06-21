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
    return Stack(children: [
      Container(
        color: Colors.green,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
      Padding(
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
      )
    ]);
  }
}

class _EmailField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomInputTextField(
        title: AppLocalizations.of(context).email,
        textInputType: TextInputType.emailAddress,
        onChanged: (email) => {print("email changed: $email")});
  }
}

class _PasswordField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomInputTextField(
        title: AppLocalizations.of(context).password,
        textInputType: TextInputType.text,
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
      child: Text(AppLocalizations.of(context).login),
    );
  }
}

class _RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400
        ),
        color: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppLocalizations.of(context).loginScreenRegisterAlert),
            const SizedBox(width: 4),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(SignUpScreen.routeName);
                },
                child: Text(
                  AppLocalizations.of(context).register,
                  style:
                      TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
