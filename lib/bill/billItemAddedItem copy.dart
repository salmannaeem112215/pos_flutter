import 'package:flutter/material.dart';

class BillItemAddedItem extends StatelessWidget {
  const BillItemAddedItem(
      {Key? key, required this.name, required this.price, required this.qty})
      : super(key: key);
  final String name;
  final double qty;
  final double price;

  double getAmount() {
    return qty * price;
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle headingStyle = TextStyle(
      color: Colors.white,
      fontSize: 14,
    );
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.white30,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
              child: Text(
            name,
            style: headingStyle,
          )),
          Container(
            alignment: Alignment.center,
            width: 120,
            child: Text(
              qty.toString(),
              style: headingStyle,
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 120,
            child: Text(
              price.toString(),
              style: headingStyle,
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 120,
            child: Text(
              getAmount().toString(),
              style: headingStyle,
            ),
          ),
        ],
      ),
    );
  }
}
