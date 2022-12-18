import 'dart:ui';
import 'package:flutter/material.dart';

class BillItem {
  BillItem({
    required this.barcode,
    required this.name,
    required this.price,
    required this.qty,
    required this.index,
  });
  final String barcode;
  final String name;
  double qty;
  final double price;
  final int index;

  void editQuanity(double i) {
    this.qty = i;
  }

  double getTotalPrice() {
    return this.qty * this.price;
  }

  @override
  Widget displayBillItem(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex: 5, child: Text(name)),
          Container(
            width: 100,
            child: Center(child: Text(qty.toString())),
          ),
          Container(
            alignment: Alignment.centerRight,
            width: 100,
            child: Text(price.toString()),
          ),
        ],
      ),
    );
  }
}
