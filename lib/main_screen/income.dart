import 'package:ada_bread/dataHub/data_storage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Income extends StatelessWidget {
  Income({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List contrat = Provider.of<DataStorage>(context).contactList;
    num totPriceDabo = 0;
    var quantityOfBread = contrat.map((e) => e.quantity).toList();

    var priceOfBread = contrat.map((e) => e.price).toList();
    for (int x = 0; x < quantityOfBread.length; x++) {
      totPriceDabo += quantityOfBread[x] * priceOfBread[x];
    }
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.arrow_downward_rounded,
                  size: 30,
                  color: Colors.white,
                ),
                Text(
                  'INCOME',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
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
                  'ETB: ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  totPriceDabo.toStringAsFixed(2),
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
            Colors.green,
            Colors.green.withOpacity(0.4),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          color: Colors.green,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),
        margin: const EdgeInsets.all(8),
        height: 90,
      ),
    );
  }
}
