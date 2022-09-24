import 'package:ada_bread/dataHub/data_storage.dart';
import 'package:ada_bread/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AdaBread());
}

class AdaBread extends StatefulWidget {
  const AdaBread({Key? key}) : super(key: key);

  @override
  State<AdaBread> createState() => _AdaBreadState();
}

class _AdaBreadState extends State<AdaBread> {
  final List homePageScreen = [];
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => DataStorage(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
