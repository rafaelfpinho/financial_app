import 'package:financial_app/ui/constants/expense_type_enum.dart';
import 'package:financial_app/ui/screens/AddExpenseScreen/add_expense_screen.dart';
import 'package:financial_app/ui/screens/SettingsScreen/settings_screen.dart';
import 'package:financial_app/ui/screens/wigets/custom_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/homeScreen";

  @override
  State<StatefulWidget> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            MaterialButton(
              onPressed: () => Navigator.of(context).pushNamed(SettingsScreen.routeName),
              child: Icon(Icons.settings, color: Colors.white),

          )],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => Navigator.of(context).pushNamed(AddExpenseScreen.routeName)
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(height: 24),
            Text(
              'Dispesas do mes:',
                style: Theme.of(context).textTheme.headline5
            ),
            SizedBox(height: 24),
            CustomListViewItem(title: "text1", value: 100, type: ExpenseTypeEnum.investment),
            CustomListViewItem(title: "text2", value: 50, type: ExpenseTypeEnum.food),
            CustomListViewItem(title: "text2", value: 15.5, type: ExpenseTypeEnum.custom)
      ],
        )
    );
  }
}