import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/billItems.dart';

class PaymentActionLeft extends StatelessWidget {
  const PaymentActionLeft({
    Key? key,
    required this.headingText,
  }) : super(key: key);
  final Widget headingText;

  @override
  Widget build(BuildContext context) {
    final billItemsData = Provider.of<BillItems>(context);
    return Container(
      width: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          cancelButton(context, () {
            Navigator.of(context).pop();
          }),
          headingText,
          cashButton(context, billItemsData.billCompleted),
        ],
      ),
    );
  }

  Widget cashButton(BuildContext context, Function cashFunc) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: Theme.of(context).primaryColor,
        ),
      ),
      onPressed: () {
        Navigator.of(context).pop();
        cashFunc();
      },
      child: Container(
          height: 50, alignment: Alignment.center, child: const Text("Cash")),
    );
  }

  Widget cancelButton(BuildContext context, Function canclFunc) {
    return Container(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Theme.of(context).errorColor,
        ),
        onPressed: () => canclFunc,
        child: Row(
          children: [
            Icon(
              Icons.cancel,
              color: Colors.white,
            ),
            SizedBox(width: 30),
            Text(
              'Cancel',
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
