import 'package:financial_app/ui/screens/custom_input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = "/signUpScreen";

  @override
  State<StatefulWidget> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
            child: _SignUpForm()
        ),
      ),
    );
  }
}

class _SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _NameInput(),
        SizedBox(height: 16),
        _EmailInput(),
        SizedBox(height: 16),
        _DateOfBirthInput(),
        SizedBox(height: 16),
        _PasswordInput(),
        SizedBox(height: 16),
        _ComfirmPasswordInput(),
        SizedBox(height: 16),
        _RegisterButton()
      ],
    );
  }
}

class _NameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomInputTextField(
        title: AppLocalizations.of(context).name,
        onChanged: (name) => {
          print("email changed: $name")
        });
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomInputTextField(
        title: AppLocalizations.of(context).email,
        onChanged: (email) => {
      print("email changed: $email")
    });
  }
}

class _DateOfBirthInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomInputTextField(
        title: AppLocalizations.of(context).dateOfBirth,
        onChanged: (dateOfBirth) => {
          print("email changed: $dateOfBirth")
        });
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomInputTextField(
        title: AppLocalizations.of(context).password,
        onChanged: (password) => {
          print("email changed: $password")
        });
  }
}

class _ComfirmPasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomInputTextField(
        title: AppLocalizations.of(context).comfirmPassword,
        onChanged: (password) => {
          print("email changed: $password")
        });
  }
}

class _RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.blueAccent,
      height: 48,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      onPressed: () => {Navigator.of(context).pop()},
      child: Text(AppLocalizations.of(context).register),
      textColor: Colors.white,
    );
  }
}