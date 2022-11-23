import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = "settingsScreen";

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SettingsScreenState();

}

class SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(),
            body: Text("Settings Screen"),
          );
        }
  }
