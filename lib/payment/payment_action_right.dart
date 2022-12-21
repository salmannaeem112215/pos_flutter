import 'package:flutter/material.dart';

class PaymentActionRight extends StatelessWidget {
  const PaymentActionRight({
    Key? key,
    required this.headingText,
    required this.totalAmount,
  }) : super(key: key);
  final Widget headingText;
  final double totalAmount;

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width - 150 - 150 - 250;
    return Expanded(
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            discountButton(context),
            headingText,
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
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
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Paid: ',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                ),
                // TextField(),
                Container(
                  width: _screenWidth,
                  child: TextField(
                    textDirection: TextDirection.rtl,
                    onSubmitted: (s) {
                      print(s);
                    },
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
              Icon(
                Icons.percent,
                color: Colors.white70,
              ),
              SizedBox(width: 10),
              Text('Discount'),
            ],
          )),
    );
  }
}
