import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpanseDetailsScreen extends StatefulWidget {
  static const routeName = "/ExpanseDetailsScreen";

  @override
  _ExpanseDetailsScreenState createState() => _ExpanseDetailsScreenState();

}

class _ExpanseDetailsScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("Expense Details Screen"),
    );
  }
}