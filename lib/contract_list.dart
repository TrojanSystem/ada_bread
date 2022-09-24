import 'package:ada_bread/dataHub/data_storage.dart';
import 'package:ada_bread/income.dart';
import 'package:ada_bread/production/contrat_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'expense.dart';

class ItemDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Consumer<DataStorage>(
        builder: (context, data, child) => Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Income(),
                  Expense(),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: AnimationLimiter(
                child: ListView.builder(
                  padding: EdgeInsets.all(_w / 30),
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  itemCount: data.contactList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      delay: const Duration(milliseconds: 100),
                      child: SlideAnimation(
                        duration: const Duration(milliseconds: 2500),
                        curve: Curves.fastLinearToSlowEaseIn,
                        horizontalOffset: -300,
                        verticalOffset: -850,
                        child: Slidable(
                          endActionPane: ActionPane(
                            motion: const ScrollMotion(),
                            children: [
                              const SizedBox(
                                width: 50,
                              ),
                              IconButton(
                                color: Colors.red,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.delete_forever,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                          startActionPane: ActionPane(
                            motion: const ScrollMotion(),
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              IconButton(
                                color: Colors.green,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.edit,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Text(
                                          data.contactList[index].price
                                              .toStringAsFixed(1),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const Text(
                                          'ETB',
                                        ),
                                      ],
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                    ),
                                    margin: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    child: ListTile(
                                      title: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8.0),
                                        child: Text(
                                          data.contactList[index].name,
                                        ),
                                      ),
                                      subtitle: Text(
                                        DateFormat.yMMMEd().format(
                                          DateTime.now(),
                                        ),
                                      ),
                                      trailing: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'Dabo',
                                            style: TextStyle(
                                              color: Colors.green[800],
                                              fontFamily: 'FjallaOne',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                          Text(
                                            data.contactList[index].quantity
                                                .toString(),
                                            style: TextStyle(
                                              color: Colors.green[800],
                                              fontFamily: 'FjallaOne',
                                              fontSize: 25,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            margin: EdgeInsets.only(bottom: _w / 20),
                            height: _w / 4,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 40,
                                  spreadRadius: 10,
                                ),
                              ],
                            ),
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
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => const ContratInput()));
      }),
    );
  }
}
