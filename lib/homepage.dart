import 'package:ada_bread/order/dfo_order.dart';
import 'package:ada_bread/production/production_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dataHub/data_storage.dart';
import 'mainScreen/bottom_nav_item.dart';
import 'main_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List screens = [
    MainScreen(),
    ProductionPage(),
    const DfoOrder(),
  ];
  @override
  Widget build(BuildContext context) {
    int currentIndex = Provider.of<DataStorage>(context).index;

    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: MyCustomBottomNavigationBar(),
    );
  }
}
