import 'package:flutter/material.dart';
import 'package:pos_flutter_arronium/provider/billItems.dart';
import 'package:pos_flutter_arronium/provider/items.dart';
import 'package:provider/provider.dart';
import './payment/payment_screen.dart';
import './/bill/billScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Items(),
      child: ChangeNotifierProvider(
        create: (ctx) => BillItems(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.grey,
            backgroundColor: Color(0xFF333333),
            primaryColorDark: Color(0xFF252525),
            errorColor: Color(0xffC9312C),
            focusColor: Color(0xff1BA1E2),
            // primaryColor: Colors.white,
          ),
          // home: BillScreen(),
          initialRoute: '/',
          routes: {
            '/': (ctx) => BillScreen(),
            PaymentScreen.nameRoute: (ctx) => PaymentScreen(),
          },
          // home: BillScreen(),
        ),
      ),
    );
  }
}
