import 'package:ada_bread/dataHub/data_storage.dart';
import 'package:ada_bread/dataHub/production_data_hub.dart';
import 'package:ada_bread/main_screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const AdaBread(),
  );
}

class AdaBread extends StatefulWidget {
  const AdaBread({Key key}) : super(key: key);

  @override
  State<AdaBread> createState() => _AdaBreadState();
}

class _AdaBreadState extends State<AdaBread> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => DataStorage(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) =>
              ProductionModelData()..loadContractList(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
