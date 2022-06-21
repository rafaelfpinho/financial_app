

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: Material(
          child: Text("Register Screen")
      ),
    );
  }

}