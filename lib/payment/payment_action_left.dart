import 'package:flutter/material.dart';

class PaymentActionLeft extends StatelessWidget {
  const PaymentActionLeft({Key? key, required this.headingText})
      : super(key: key);
  final Widget headingText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).errorColor,
              ),
              onPressed: null,
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
            onPressed: () {},
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
