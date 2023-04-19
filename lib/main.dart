import 'package:flutter/material.dart';
import 'package:week1/convert_btc.dart';
import 'package:week1/water.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PageConvert());
  }
  
}

