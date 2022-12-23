import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/billItems.dart';

class PaymentActionRight extends StatelessWidget {
  const PaymentActionRight({
    Key? key,
    required this.headingText,
  }) : super(key: key);
  final Widget headingText;

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width - 150 - 170 - 250;
    final billItemsData = Provider.of<BillItems>(context);
    return Expanded(
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            discountButton(context),
            headingText,
            totalPrice(context, billItemsData.getTotalAmount()),
            enterPrice(context, _screenWidth, billItemsData.billCompleted),
          ],
        ),
      ),
    );
  }

  Widget discountButton(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: Theme.of(context).primaryColor,
        ),
      ),
      onPressed: () {},
      child: Container(
          height: 50,
          width: 120,
          alignment: Alignment.center,
          child: Row(
            children: [
              const Icon(
                Icons.percent,
                color: Colors.white70,
              ),
              const SizedBox(width: 10),
              const Text('Discount'),
            ],
          )),
    );
  }

  Widget totalPrice(BuildContext context, double totalAmount) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            'Total: ',
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
        ),
        Text(
          totalAmount.toStringAsFixed(2),
          style: TextStyle(
              color: Theme.of(context).focusColor,
              fontSize: 24,
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }

  Widget enterPrice(
      BuildContext context, double screenWidth, Function enterFunc) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            'Paid: ',
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
        ),
        Container(
          width: screenWidth,
          child: TextField(
            textDirection: TextDirection.rtl,
            onSubmitted: (s) {
              enterFunc();
              Navigator.of(context).pop();
            },
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
            decoration: const InputDecoration(
              icon: Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
