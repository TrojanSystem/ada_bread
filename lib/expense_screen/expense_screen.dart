import 'package:ada_bread/dataHub/data_storage.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../drop_down_menu_button.dart';
import 'add_expense.dart';

class ExpenseScreen extends StatefulWidget {
  ExpenseScreen({Key key}) : super(key: key);

  @override
  State<ExpenseScreen> createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  int selectedDayOfMonth = DateTime.now().day;
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Consumer<DataStorage>(
      builder: (context, dailyExpense, child) => Scaffold(
        backgroundColor: const Color.fromRGBO(3, 83, 151, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(3, 83, 151, 1),
          title: const Text(
            'Expenses',
            style: storageTitle,
          ),
          elevation: 0,
          toolbarHeight: 90,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButton(
                          dropdownColor: Colors.grey[850],
                          iconEnabledColor: Colors.white,
                          menuMaxHeight: 300,
                          value: selectedDayOfMonth,
                          items: dailyExpense.daysOfMonth
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
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Daily Expense: ',
                              style: dailyIncomeStyle,
                            ),
                            Text(
                              'Total: ',
                              style: dailyIncomeStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                color: const Color.fromRGBO(3, 83, 151, 1),
              ),
            ),
            const Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    'Not yet!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                )),
          ],
        ),
        floatingActionButton: Builder(
          builder: (context) => DropDownMenuButton(
            primaryColor: Colors.red,
            button_1: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const AddExpense(),
                ),
              );
            },
            button_2: () {
              setState(() {});
            },
            button_3: () {},
            button_4: () {},
          ),
        ),
      ),
    );
  }
}
