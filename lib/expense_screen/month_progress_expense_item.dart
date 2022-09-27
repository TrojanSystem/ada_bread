import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import 'expenses_data.dart';

class MonthProgressExpenseItem extends StatefulWidget {
  MonthProgressExpenseItem({Key key}) : super(key: key);

  @override
  State<MonthProgressExpenseItem> createState() =>
      _MonthProgressExpenseItemState();
}

class _MonthProgressExpenseItemState extends State<MonthProgressExpenseItem> {
  int selectedMonth = DateTime.now().month;

  @override
  Widget build(BuildContext context) {
    final monthSelected = Provider.of<ExpensesData>(context).monthOfAYear;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(3, 83, 151, 1),
          ),
        ),
        title: const Text('Monthly Expense'),
        actions: [
          DropdownButton(
            dropdownColor: Colors.grey[850],
            iconEnabledColor: Colors.white,
            menuMaxHeight: 300,
            value: selectedMonth,
            items: monthSelected
                .map(
                  (e) => DropdownMenuItem(
                    child: Text(
                      e['mon'],
                      style: kkDropDown,
                    ),
                    value: e['day'],
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {});
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'No Expense yet!',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
