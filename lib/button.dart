import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  //final Function navigateToPage;
  Color colour;

  AddButton({
    required this.colour,
    //required this.navigateToPage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 60.0,
        height: 60.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.blue.withOpacity(0.7)],
              begin: const Alignment(0.0, -1.0),
              end: const Alignment(0.0, 1.0)),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
