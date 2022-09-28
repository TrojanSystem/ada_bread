import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProgressContainerItem extends StatefulWidget {
  final String soldItem;
  final String dailyProducedItem;

  const ProgressContainerItem({
    this.soldItem,
    this.dailyProducedItem,
  });

  @override
  State<ProgressContainerItem> createState() => _ProgressContainerItemState();
}

class _ProgressContainerItemState extends State<ProgressContainerItem> {
  @override
  Widget build(BuildContext context) {
    double percent = ((double.parse(widget.soldItem) /
            double.parse(widget.dailyProducedItem)) *
        100);

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
            percent: percent / 100,
            center: Text(
              percent.toStringAsFixed(1),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            progressColor: percent < 25
                ? Colors.blue[900]
                : percent > 25 && percent < 50
                    ? Colors.blue
                    : percent > 50 && percent < 75
                        ? Colors.blueAccent
                        : percent > 75
                            ? Colors.green
                            : Colors.red,
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
                      text: widget.soldItem.toString(),
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
                      text: widget.dailyProducedItem.toString(),
                      style: TextStyle(
                        color: Colors.blue[900],
                      ),
                    ),
                    const TextSpan(
                      text: ' Piece done',
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
