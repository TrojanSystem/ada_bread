import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProgressContainerItem extends StatefulWidget {
  final int taskDone;
  final int totalTask;

  const ProgressContainerItem({
    this.taskDone,
    this.totalTask,
  });

  @override
  State<ProgressContainerItem> createState() => _ProgressContainerItemState();
}

class _ProgressContainerItemState extends State<ProgressContainerItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 5, bottom: 5),
      padding: const EdgeInsets.only(left: 20, right: 20),
      height: 90,
      child: Row(
        children: [
          CircularPercentIndicator(
            circularStrokeCap: CircularStrokeCap.round,
            radius: 60.0,
            lineWidth: 9.0,
            percent: 0.8,
            center: const Text(
              '80%',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            progressColor: Colors.blue[900],
          ),
          const SizedBox(
            width: 25,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Daily Progress',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: widget.taskDone.toString(),
                      style: TextStyle(
                        color: Colors.blue[900],
                      ),
                    ),
                    TextSpan(
                      text: ' / ',
                      style: TextStyle(
                        color: Colors.blue[900],
                      ),
                    ),
                    TextSpan(
                      text: widget.totalTask.toString(),
                      style: TextStyle(
                        color: Colors.blue[900],
                      ),
                    ),
                    const TextSpan(
                      text: ' Batra done',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    );
  }
}
