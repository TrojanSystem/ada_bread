import 'package:ada_bread/profit_analysis/profit_analaysis.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ProfitAnalaysisScreen extends StatefulWidget {
  const ProfitAnalaysisScreen({Key key}) : super(key: key);

  @override
  State<ProfitAnalaysisScreen> createState() => _ProfitAnalaysisScreenState();
}

class _ProfitAnalaysisScreenState extends State<ProfitAnalaysisScreen> {
  int currentYear = DateTime.now().year;
  double totalSumation = 0.00;
  bool isNegative = false;

  @override
  Widget build(BuildContext context) {
    // Provider.of<ShopModelData>(context).currentYear = currentYear;
    // final summaryDataExpense = Provider.of<ExpensesData>(context).expenseList;
    // final summaryDataSold = Provider.of<DailySellData>(context).dailySellList;
    // final yearFilter = Provider.of<ShopModelData>(context).shopList;
    //
    // final filterByYearExpense = summaryDataExpense
    //     .where(
    //         (element) => DateTime.parse(element.itemDate).year == currentYear)
    //     .toList();
    // final filterByYearSold = summaryDataSold
    //     .where(
    //         (element) => DateTime.parse(element.itemDate).year == currentYear)
    //     .toList();
    //
    // var totalIncomeQuantity =
    //     filterByYearSold.map((e) => e.itemQuantity).toList();
    // var totalIncome = filterByYearSold.map((e) => e.itemPrice).toList();
    // var totIncomeSum = 0.0;
    // for (int xx = 0; xx < totalIncome.length; xx++) {
    //   totIncomeSum += (double.parse(totalIncome[xx]) *
    //       double.parse(totalIncomeQuantity[xx]));
    // }
    //
    // var totalExpenses = filterByYearExpense.map((e) => e.itemPrice).toList();
    // var totExpenseSum = 0.0;
    // for (int xx = 0; xx < totalExpenses.length; xx++) {
    //   totExpenseSum += double.parse(totalExpenses[xx]);
    // }
    // final x = Provider.of<ExampleClass>(context).fileList;
    // final xx = x.map((e) => e.profit).toList();
    // var sumUp = 0.0;
    // for (int finals = 0; finals < xx.length; finals++) {
    //   sumUp += double.parse(xx[finals]);
    // }
    //
    // final dataForProfit =
    //     Provider.of<ProfitModelData>(context, listen: false).profitList;
    //
    // final data = dataForProfit
    //     .where(
    //         (element) => DateTime.parse(element.itemDate).year == currentYear)
    //     .toList();
    //
    // final profitStorePrice = data.map((e) => e.storePrice).toList();
    // final profitSoldQuantity = data.map((e) => e.sellQuantity).toList();
    // var profitSum = 0.0;
    // for (int finals = 0; finals < data.length; finals++) {
    //   profitSum += (double.parse(profitStorePrice[finals]) *
    //       double.parse(profitSoldQuantity[finals]));
    // }
    // double yearlyProfit = 0.0;
    //
    // yearlyProfit = totIncomeSum - profitSum;
    // double totalSummary(double totExpenseSum, double totIncomeSum) {
    //   totalSumation = yearlyProfit - totExpenseSum;
    //   if (totalSumation < 0) {
    //     totalSumation = totalSumation * (-1);
    //     isNegative = true;
    //     return totalSumation;
    //   } else {
    //     isNegative = false;
    //     return totalSumation;
    //   }
    // }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: const Color.fromRGBO(3, 83, 151, 1).withOpacity(0.9),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: const Color.fromRGBO(3, 83, 151, 1).withOpacity(0.9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            currentYear -= 1;
                          });
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          currentYear.toString(),
                          style: kkSummaryStyle,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            currentYear = currentYear + 1;
                          });
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ],
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30.0, right: 30, top: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Income',
                          style: kkSummaryStyleTab,
                        ),
                        Text(
                          'yearlyProfit',
                          style: kkSummaryIncomeStyle,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30.0, right: 30, top: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Expense',
                          style: kkSummaryStyleTab,
                        ),
                        Text(
                          ' totExpenseSum',
                          style: kkSummaryExpenseStyle,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30.0, right: 30, top: 10),
                    child: Container(
                      width: double.infinity,
                      height: 2,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30.0, right: 30, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Profit',
                          style: kkSummaryStyleTab,
                        ),
                        Text(
                          'totalSummary',
                          style: TextStyle(
                            color: isNegative ? Colors.red : Colors.green,
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ListView.builder(
              itemCount: 12,
              itemBuilder: (context, index) {
                return ProfitAnalaysis(
                  currentYear: currentYear,
                  index: index,
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
