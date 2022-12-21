import 'package:flutter/material.dart';
import 'package:pos_flutter_arronium/payment/payment_ItemDetails.dart';
import 'package:pos_flutter_arronium/payment/payment_billAction.dart';
import 'package:pos_flutter_arronium/payment/payment_billItem.dart';
import '../model/billItem.dart';

import './paymentHeading.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({
    Key? key,
  }) : super(key: key);
  final List<BillItem> _billItem = [
    BillItem(
      barcode: '100002',
      name: 'Physics 12 PTB',
      price: 150,
      qty: 2,
      index: 1,
    ),
    BillItem(
      barcode: '100003',
      name: 'Maths 12 PTB',
      price: 150,
      qty: 2,
      index: 2,
    ),
    BillItem(
      barcode: '100004',
      name: 'Computer 12 PTB',
      price: 150,
      qty: 2,
      index: 3,
    ),
    BillItem(
      barcode: '100005',
      name: 'Biology 12 PTB',
      price: 150,
      qty: 2,
      index: 4,
    ),
    BillItem(
      barcode: '100006',
      name: 'English 12 PTB',
      price: 150,
      qty: 2,
      index: 5,
    ),
  ];

  double getTotalAmount() {
    double total = 0;
    _billItem.forEach((element) {
      total += element.price * element.qty;
    });
    return total;
  }

  @override
  Widget build(BuildContext context) {
    final _borderSide = BorderSide(
      color: Colors.white30,
    );
    final _itemHeadingBorder = Border(bottom: _borderSide, right: _borderSide);
    final _itemsBodyBorder = Border(right: _borderSide);
    final _itemBorder = Border(bottom: _borderSide);
    final _actionHeadingBorder = Border(bottom: _borderSide);

    return Scaffold(
      body: Container(
        child: Row(
          children: [
            PaymentItemDetails(
              billItem: _billItem,
              itemHeadingBorder: _itemHeadingBorder,
              itemsBodyBorder: _itemsBodyBorder,
              itemBorder: _itemBorder,
            ),
            PaymentBillAction(
              itemHeadingBorder: _itemHeadingBorder,
              totalAmount: getTotalAmount(),
            ),
          ],
        ),
      ),
    );
  }
}
