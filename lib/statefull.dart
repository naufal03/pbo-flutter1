import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  //deklarasi variable
  int leftDiceNumber = 1;

//function
  void rubahDadu() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Dadu"),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  rubahDadu();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  rubahDadu();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
