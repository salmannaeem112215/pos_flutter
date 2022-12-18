import 'package:flutter/material.dart';

class BillItemAddedHeading extends StatelessWidget {
  const BillItemAddedHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle headingStyle = TextStyle(
      color: Colors.white,
      fontSize: 16,
    );
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.white70,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
              child: Text(
            'Product Name',
            style: headingStyle,
          )),
          Container(
            alignment: Alignment.center,
            width: 120,
            child: Text(
              'Quantity',
              style: headingStyle,
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 120,
            child: Text(
              'Price',
              style: headingStyle,
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 120,
            child: Text(
              'Amount',
              style: headingStyle,
            ),
          ),
        ],
      ),
    );
  }
}
