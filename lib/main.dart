import 'package:flutter/material.dart';
import './model/item.dart';
import './model/billItem.dart';
import 'package:pos_flutter_arronium/bill/billScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        backgroundColor: Color(0xFF333333),
        primaryColorDark: Color(0xFF252525),
        // primaryColor: Colors.white,
      ),
      home: BillScreen(),
    );
  }
}
