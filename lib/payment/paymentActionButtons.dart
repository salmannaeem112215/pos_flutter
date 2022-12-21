import 'package:flutter/material.dart';
import 'package:pos_flutter_arronium/bill/button.dart';
import 'package:pos_flutter_arronium/bill/largeButton.dart';
import 'package:pos_flutter_arronium/payment/payment_action_left.dart';
import 'package:pos_flutter_arronium/payment/payment_action_right.dart';

class PaymentActionButtons extends StatelessWidget {
  PaymentActionButtons(
      {Key? key, required this.totalAmount, required this.newBill})
      : super(key: key);
  final double totalAmount;
  final Function newBill;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
        ),
        child: Row(
          children: [
            PaymentActionLeft(
                headingText: headingText('Payment Type'), newBill: newBill),
            PaymentActionRight(
              headingText: headingText('Payment'),
              totalAmount: totalAmount,
              newBill: newBill,
            ),
          ],
        ),
      ),
    );
  }

  Widget headingText(String text) {
    return Container(
      height: 50,
      padding: EdgeInsets.all(8),
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w100,
        ),
      ),
    );
  }
}
