import 'package:ada_bread/production_screen/seller_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../dataHub/data/data_storage.dart';
import '../drop_down_menu_button.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedDayOfMonth = DateTime.now().day;
  bool isTapped = true;
  double totalSumation = 0.00;
  bool isNegative = false;
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    final daySelected = Provider.of<DataStorage>(context).daysOfMonth;
    return Scaffold(
      appBar: AppBar(
        title: const Text('ADA\'S BREAD'),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 90,
        backgroundColor: const Color.fromRGBO(3, 83, 151, 1),
        actions: [
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
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
                        items: daySelected
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
                          setState(() {
                            selectedDayOfMonth = value as int;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Daily Expense: 700',
                            style: dailyIncomeStyle,
                          ),
                          Text(
                            'Daily Income: 120',
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
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 3,
            child: AnimationLimiter(
              child: ListView.builder(
                padding: EdgeInsets.all(_w / 30),
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    delay: const Duration(milliseconds: 100),
                    child: SlideAnimation(
                      duration: const Duration(milliseconds: 2500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      horizontalOffset: -300,
                      verticalOffset: -850,
                      child: InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          setState(() {
                            isTapped = !isTapped;
                          });
                        },
                        onHighlightChanged: (value) {
                          setState(() {
                            isExpanded = value;
                          });
                        },
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AnimatedContainer(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 8),
                                margin: const EdgeInsets.only(
                                    left: 8.0, right: 8, top: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    colors: [
                                      const Color.fromRGBO(40, 53, 147, 1),
                                      const Color.fromRGBO(40, 53, 147, 1)
                                          .withOpacity(0.9)
                                    ],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      blurRadius: 4,
                                      offset: const Offset(
                                          4, 8), // changes position of shadow
                                    ),
                                  ],
                                ),
                                duration: const Duration(seconds: 1),
                                curve: Curves.fastLinearToSlowEaseIn,
                                height: isTapped
                                    ? isExpanded
                                        ? 125
                                        : 130
                                    : isExpanded
                                        ? 200
                                        : 205,
                                width: isExpanded ? 345 : 350,
                                child: isTapped
                                    ? Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  top: 25, bottom: 25, left: 5),
                                              child: Image.asset(
                                                  'images/employee.png'),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  top: 10, left: 5),
                                              // decoration: BoxDecoration(
                                              //   border: Border.all(
                                              //     color: Colors.blue,
                                              //     width: 2,
                                              //   ),
                                              // ),
                                              child: Column(
                                                children: [
                                                  const Text(
                                                    'Surafel Terefe',
                                                    style: kkSummaryExpense,
                                                  ),
                                                  Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: const [
                                                          Text(
                                                            'Expected Income:',
                                                            style:
                                                                kkSummaryExpense,
                                                          ),
                                                          Text(
                                                            '200',
                                                            style:
                                                                kkSummaryExpense,
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: const [
                                                            Text(
                                                              'Sold Price',
                                                              style:
                                                                  kkSummaryExpense,
                                                            ),
                                                            Text(
                                                              '2000',
                                                              style:
                                                                  kkSummaryExpense,
                                                            ),
                                                          ]),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: SizedBox(
                                                      height: 40,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: <Widget>[
                                                          SizedBox(
                                                            height: 20,
                                                            width: 170,
                                                            child:
                                                                FAProgressBar(
                                                              size: 20,
                                                              backgroundColor:
                                                                  Colors.grey,
                                                              progressColor:
                                                                  Colors.green,
                                                              currentValue: 75,
                                                              displayText: '%',
                                                              displayTextStyle:
                                                                  const TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 20,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            isTapped
                                                ? Icons.keyboard_arrow_down
                                                : Icons.keyboard_arrow_up,
                                            color: Colors.black,
                                            size: 27,
                                          ),
                                        ],
                                      )
                                    : Column(
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Image.asset(
                                                    'images/employee.png'),
                                              ),
                                              Expanded(
                                                flex: 4,
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10, left: 5),
                                                  // decoration: BoxDecoration(
                                                  //   border: Border.all(
                                                  //     color: Colors.blue,
                                                  //     width: 2,
                                                  //   ),
                                                  // ),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Row(
                                                          children: const [
                                                            Text(
                                                              'Expected Income:',
                                                              style:
                                                                  kkSummaryIncome,
                                                            ),
                                                            Text(
                                                              '200',
                                                              style:
                                                                  kkSummaryIncome,
                                                            ),
                                                          ],
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Row(
                                                          children: const [
                                                            Text(
                                                              'Sold Price',
                                                              style:
                                                                  kkSummaryExpense,
                                                            ),
                                                            Text('2000',
                                                                style:
                                                                    kkSummaryExpense),
                                                          ],
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Icon(
                                                isTapped
                                                    ? Icons.keyboard_arrow_down
                                                    : Icons.keyboard_arrow_up,
                                                color: Colors.black,
                                                size: 27,
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10.0),
                                                    child: TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context).push(
                                                            MaterialPageRoute(
                                                                builder: (ctx) =>
                                                                    const SellerDetail()));
                                                      },
                                                      child: const Text(
                                                        'Selling Detail',
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 15.0),
                                                    child: TextButton(
                                                      onPressed: () {},
                                                      child: const Text(
                                                        'Expense Detail',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),

                                                //   SummaryExpenseList(index: widget.index,listMonth: monthOfYear,)
                                              ],
                                            ),
                                          ),
                                        ],
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                      ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Builder(
        builder: (context) => DropDownMenuButton(
            primaryColor: Colors.red,
            button_1: () {},
            button_2: () {},
            button_3: () {},
            button_4: () {}),
      ),
    );
  }
}
