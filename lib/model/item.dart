import 'dart:ui';
import 'package:flutter/material.dart';

class Item {
  Item({
    required this.name,
    required this.price,
    required this.cost,
    required this.qty,
    required this.barcode,
    required this.lQW,
    this.isActive = true,
    this.isWasted = false,
  });
  final String barcode;
  final String name;
  double qty;
  final double price;

  final int lQW;
  final double cost;
  bool isActive;
  bool isWasted;

  void decreaseQty(double q) {
    qty -= q;
  }

  void increaseQty(double q) {
    qty += q;
  }

  @override
  Widget displayItemList(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex: 5, child: Text(name)),
          SizedBox(width: 20),
          Text(qty.toString()),
          SizedBox(width: 20),
          Text(price.toString()),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
