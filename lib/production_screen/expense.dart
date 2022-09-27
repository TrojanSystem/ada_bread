import 'package:ada_bread/dataHub/production_data_hub.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Expense extends StatelessWidget {
  const Expense({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List contrat = Provider.of<ProductionModelData>(context).contractList;
    int sumDabo = 0;
    var totDaboDelivered = contrat.map((e) => e.quantity).toList();

    for (int x = 0; x < totDaboDelivered.length; x++) {
      sumDabo += int.parse(totDaboDelivered[x]);
    }
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/food-truck.png',
                  width: 50,
                  height: 50,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Tot: ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  sumDabo.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blue,
            Colors.blue.withOpacity(0.4),
          ], begin: Alignment.topRight, end: Alignment.bottomLeft),
          color: Colors.red,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        margin: const EdgeInsets.all(8),
        height: 90,
      ),
    );
  }
}
