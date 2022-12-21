import 'package:flutter/material.dart';

class PaymentActionButtons extends StatelessWidget {
  const PaymentActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
        ),
      ),
    );
  }
}
