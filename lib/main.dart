import 'package:flutter/material.dart';
import 'package:pbotugas/statefull.dart';

// ignore: duplicate_ignore
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: DiceApp());
  }
}
