import 'package:ada_bread/mainScreen/progress_indicator.dart';
import 'package:ada_bread/mainScreen/slideshow.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text('Ada Bread'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Slide(),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        'Expenses',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.red[800],
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        '6600',
                        style: TextStyle(
                          color: Colors.red[800],
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        'Income',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.green[800],
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        '10000',
                        style: TextStyle(
                          color: Colors.green[800],
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView(
              children: [
                SizedBox(
                  width: 500,
                  height: 80,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'images/bale_10.png',
                        width: 45,
                        height: 45,
                      ),
                      const ProgressContainerItem(
                        taskDone: 3,
                        totalTask: 7,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 80,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'images/bale_5.png',
                        width: 45,
                        height: 45,
                      ),
                      const ProgressContainerItem(
                        taskDone: 3,
                        totalTask: 7,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 80,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'images/slice.png',
                        width: 45,
                        height: 45,
                      ),
                      const ProgressContainerItem(
                        taskDone: 3,
                        totalTask: 7,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 80,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'images/donut.png',
                        width: 45,
                        height: 45,
                      ),
                      ProgressContainerItem(
                        taskDone: 3,
                        totalTask: 7,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
