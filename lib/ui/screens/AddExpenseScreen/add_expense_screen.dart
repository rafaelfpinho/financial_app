import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddExpenseScreen extends StatefulWidget {
  static String routeName = 'AddExpenseScreen';
  @override
  _AddExpenseScreenState createState() => _AddExpenseScreenState();

}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text('Add Expnese Screen'),
    );
  }
}