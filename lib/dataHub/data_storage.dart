import 'dart:core';

import 'package:ada_bread/dataHub/contract_model.dart';
import 'package:flutter/cupertino.dart';

class DataStorage extends ChangeNotifier {
  int index = 0;
  List<ContractModel> contactList = [];

  void currentIndex(currentIndex) {
    index = currentIndex;
    notifyListeners();
  }

  void contractList(name, quantity, date, price) {
    contactList.add(
      ContractModel(
        name: name,
        date: date,
        quantity: quantity,
        price: price,
      ),
    );
    notifyListeners();
  }
}
