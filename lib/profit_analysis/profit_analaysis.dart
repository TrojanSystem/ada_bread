import 'package:flutter/material.dart';

import '../constants.dart';

class ProfitAnalaysis extends StatefulWidget {
  final int index;
  final int currentYear;

  ProfitAnalaysis({this.index, this.currentYear});

  @override
  State<ProfitAnalaysis> createState() => _ProfitAnalaysisState();
}

class _ProfitAnalaysisState extends State<ProfitAnalaysis> {
  bool isTapped = true;
  double totalSumation = 0.00;
  bool isNegative = false;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    // final summarySellingDataList =
    //     Provider.of<DailySellData>(context).dailySellList;
    // final summaryExpenseDataList =
    //     Provider.of<ExpensesData>(context).expenseList;
    // final monthOfYear = [
    //   'Jan',
    //   'Feb',
    //   'Mar',
    //   'Apr',
    //   'May',
    //   'Jun',
    //   'Jul',
    //   'Aug',
    //   'Sept',
    //   'Oct',
    //   'Nov',
    //   'Dec'
    // ];
    //
    // final filtereByYearForExpense = summaryExpenseDataList
    //     .where((element) =>
    //         DateTime.parse(element.itemDate).year == widget.currentYear)
    //     .toList();
    // final filtereByYearForSell = summarySellingDataList
    //     .where((element) =>
    //         DateTime.parse(element.itemDate).year == widget.currentYear)
    //     .toList();
    //
    // var monthExpense = filtereByYearForExpense
    //     .where((element) =>
    //         DateFormat.MMM()
    //             .format(DateTime.parse(element.itemDate))
    //             .toString() ==
    //         monthOfYear[widget.index])
    //     .toList();
    // var monthExpenseSummary = monthExpense.map((e) => e.itemPrice).toList();
    // var sumExpense = 0.0;
    // for (int x = 0; x < monthExpenseSummary.length; x++) {
    //   sumExpense += double.parse(monthExpenseSummary[x]);
    // }
    //
    // var monthIncome = filtereByYearForSell
    //     .where((element) =>
    //         DateFormat.MMM()
    //             .format(DateTime.parse(element.itemDate))
    //             .toString() ==
    //         monthOfYear[widget.index])
    //     .toList();
    //
    // var monthIncomeSummaryQuantity =
    //     monthIncome.map((e) => e.itemQuantity).toList();
    // var monthIncomeSummary = monthIncome.map((e) => e.itemPrice).toList();
    // var sumIncomes = 0.0;
    // for (int x = 0; x < monthIncomeSummary.length; x++) {
    //   sumIncomes += (double.parse(monthIncomeSummary[x]) *
    //       double.parse(monthIncomeSummaryQuantity[x]));
    // }
    //
    // final dataForProfit =
    //     Provider.of<ProfitModelData>(context, listen: false).profitList;
    // final dataForMonth = dataForProfit
    //     .where((element) =>
    //         DateTime.parse(element.itemDate).year == widget.currentYear)
    //     .toList();
    //
    // var data = dataForMonth
    //     .where((element) =>
    //         DateFormat.MMM()
    //             .format(DateTime.parse(element.itemDate))
    //             .toString() ==
    //         monthOfYear[widget.index])
    //     .toList();
    // final profitStorePrice = data.map((e) => e.storePrice).toList();
    // final profitSoldQuantity = data.map((e) => e.sellQuantity).toList();
    // var profitSum = 0.0;
    // for (int finals = 0; finals < data.length; finals++) {
    //   profitSum += (double.parse(profitStorePrice[finals]) *
    //       double.parse(profitSoldQuantity[finals]));
    // }
    // double sumIncome = 0.00;
    //
    // sumIncome = sumIncomes - profitSum;
    //
    // double totalSummaryDetail(double sumIncome, double sumExpense) {
    //   totalSumation = sumIncome - sumExpense;
    //   if (totalSumation < 0) {
    //     totalSumation = totalSumation * (-1);
    //     isNegative = true;
    //     return totalSumation;
    //   } else {
    //     isNegative = false;
    //     return totalSumation;
    //   }
    // }

    return InkWell(
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
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              margin: const EdgeInsets.only(left: 8.0, right: 8, top: 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromRGBO(3, 83, 151, 1),
                    const Color.fromRGBO(3, 83, 151, 1).withOpacity(0.9)
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 4,
                    offset: const Offset(4, 8), // changes position of shadow
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
                            child: Center(
                              child: Text(
                                'monthOfYear',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            padding: const EdgeInsets.only(top: 10, left: 5),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      const Text(
                                        'Income',
                                        style: kkSummaryIncome,
                                      ),
                                      Text(
                                        ' sumIncome',
                                        style: kkSummaryIncome,
                                      ),
                                    ],
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      const Text(
                                        'Expense',
                                        style: kkSummaryExpense,
                                      ),
                                      Text('sumExpense',
                                          style: kkSummaryExpense),
                                    ],
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 2,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      const Text(
                                        'Profit',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        'Summary',
                                        style: TextStyle(
                                          color: isNegative
                                              ? Colors.red
                                              : Colors.green,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 25, bottom: 20, left: 5),
                                child: Center(
                                  child: Text(
                                    'monthOfYear',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 5),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          const Text(
                                            'Income',
                                            style: kkSummaryIncome,
                                          ),
                                          Text(
                                            'sumIncome',
                                            style: kkSummaryIncome,
                                          ),
                                        ],
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          const Text(
                                            'Expense',
                                            style: kkSummaryExpense,
                                          ),
                                          Text('sumExpense',
                                              style: kkSummaryExpense),
                                        ],
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 2,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          const Text(
                                            'Profit',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Text(
                                            'totalSummaryDetail',
                                            style: TextStyle(
                                              color: isNegative
                                                  ? Colors.red
                                                  : Colors.green,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Income Detail',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Expense Detail',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
