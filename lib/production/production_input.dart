import 'package:flutter/material.dart';

class ProductionInput extends StatefulWidget {
  const ProductionInput({Key? key}) : super(key: key);

  @override
  State<ProductionInput> createState() => _ProductionInputState();
}

class _ProductionInputState extends State<ProductionInput> {
  final formKey = GlobalKey<FormState>();
  String lists = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text('የእለት ምርት'),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 12, 35, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'ባለ 5 ብር',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value != null) {
                        return 'Daily production can\'t be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      lists = value!;
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter daily production',
                      filled: true,
                      fillColor: Colors.grey[200],
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 12, 35, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'ባለ 10 ብር',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value != null) {
                        return 'Daily production can\'t be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      lists = value!;
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter daily production',
                      filled: true,
                      fillColor: Colors.grey[200],
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 12, 35, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'ስላይስ',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value != null) {
                        return 'Daily production can\'t be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      lists = value!;
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter daily production',
                      filled: true,
                      fillColor: Colors.grey[200],
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 12, 35, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'ቦምቦሊኖ',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    maxLines: 2,
                    validator: (value) {
                      if (value != null) {
                        return 'Daily production can\'t be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      lists = value!;
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter daily production',
                      filled: true,
                      fillColor: Colors.grey[200],
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //button
            GestureDetector(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();

                  Navigator.of(context).pop();
                }
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(100, 20, 100, 0),
                width: double.infinity,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Colors.green[500],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: const Center(
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
