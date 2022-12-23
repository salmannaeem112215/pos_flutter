import 'dart:ui';
import 'package:flutter/material.dart';

class BillItem {
  BillItem({
    required this.barcode,
    required this.name,
    required this.price,
    required this.qty,
    required this.index,
    required this.selected,
  });
  final String barcode;
  final String name;
  double qty;
  final double price;
  final int index;
  bool selected = true;

  void updateQty(double q) {
    qty += q;
  }

  void setQty(double q) {
    qty = q;
  }
}
