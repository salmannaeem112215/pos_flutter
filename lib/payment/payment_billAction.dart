import 'package:flutter/material.dart';
import 'package:pos_flutter_arronium/payment/paymentActionButtons.dart';
import './paymentHeading.dart';

class PaymentBillAction extends StatelessWidget {
  const PaymentBillAction({
    Key? key,
    required this.itemHeadingBorder,
    required this.totalAmount,
  }) : super(key: key);
  final Border itemHeadingBorder;
  final double totalAmount;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: Column(
          children: [
            PaymentHeading(
              title: 'Actions',
              border: itemHeadingBorder,
              color: Theme.of(context).primaryColorDark,
            ),
            PaymentActionButtons(
              totalAmount: totalAmount,
            ),
          ],
        ),
      ),
    );
  }
}
