import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const routeName = "/forgotPasswordScreen";

  @override
  State<StatefulWidget> createState() => _ForgotPasswordScreenState();

}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Text("Forgot Password Screen"),
    );
  }
}