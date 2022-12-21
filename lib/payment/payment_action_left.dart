import 'package:flutter/material.dart';
import 'package:pos_flutter_arronium/bill/billScreen.dart';

class PaymentActionLeft extends StatelessWidget {
  const PaymentActionLeft({
    Key? key,
    required this.headingText,
    required this.newBill,
  }) : super(key: key);
  final Widget headingText;
  final Function newBill;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).errorColor,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Row(
                children: [
                  Icon(
                    Icons.cancel,
                    color: Colors.white,
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Cancel',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          headingText,
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: Theme.of(context).primaryColor,
              ),
            ),
            onPressed: () {
              newBill();
            },
            child: Container(
                height: 50,
                alignment: Alignment.center,
                child: const Text("Cash")),
          ),
        ],
      ),
    );
  }
}
