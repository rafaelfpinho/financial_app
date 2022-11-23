import 'package:financial_app/ui/constants/expense_type_enum.dart';
import 'package:financial_app/ui/screens/ExpenseDetailsScreen/expense_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatefulWidget {
  final String title;
  final ExpenseTypeEnum? type;
  final double value;
  final DateTime? date;

  const CustomListViewItem({
    Key? key,
    required this.title,
    this.type,
    required this.value,
    this.date
  }) : super(key: key);

  @override
  _CustomListViewItemState createState() => _CustomListViewItemState();
}

class _CustomListViewItemState extends State<CustomListViewItem> {
  bool enabled = false;

  Color _getColor() {
    switch(widget.type) {
      case ExpenseTypeEnum.food: return Colors.yellow;
      case ExpenseTypeEnum.fun: return Colors.pink;
      case ExpenseTypeEnum.investment: return Colors.blue;
      case ExpenseTypeEnum.custom: return Colors.green;
      default: return Colors.green;
    }
  }

  IconData _getIcon() {
    switch(widget.type) {
      case ExpenseTypeEnum.food: return Icons.local_pizza;
      case ExpenseTypeEnum.fun: return Icons.party_mode;
      case ExpenseTypeEnum.investment: return CupertinoIcons.money_dollar;
      case ExpenseTypeEnum.custom: return CupertinoIcons.conversation_bubble;
      default: return CupertinoIcons.conversation_bubble;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(ExpanseDetailsScreen.routeName),
      child: Container(
        width: MediaQuery.of(context).size.width,
        // height: 80,
        color: !enabled ? Colors.white : Colors.grey,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: _getColor(),
                      borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: Icon(
                    _getIcon(),
                    color: Colors.white,
                    size: 40)
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width - 150,
                height: 60,
                padding: EdgeInsets.only(right: 10),
                child: Text(widget.title,
                    style: Theme.of(context).textTheme.bodyLarge
                )),
            Container(
              width: 60,
              height: 60,
              padding: EdgeInsets.only(right: 10),
              alignment: Alignment.bottomLeft,
              child: Text(widget.value.toString(), style: Theme.of(context).textTheme.bodyLarge),
            )
          ],
        ),
      ),
    );
  }
}