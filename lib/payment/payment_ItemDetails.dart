import 'package:flutter/material.dart';
import './paymentHeading.dart';
import './payment_billItem.dart';
import '../model/billItem.dart';

class PaymentItemDetails extends StatelessWidget {
  const PaymentItemDetails({
    Key? key,
    required this.billItem,
    required this.itemHeadingBorder,
    required this.itemsBodyBorder,
    required this.itemBorder,
  }) : super(key: key);

  final List<BillItem> billItem;
  final Border itemHeadingBorder;
  final Border itemsBodyBorder;
  final Border itemBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PaymentHeading(
              title: 'Items',
              border: itemHeadingBorder,
              color: Theme.of(context).primaryColorDark),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                border: itemsBodyBorder,
              ),
              child: Column(
                children: [
                  ...billItem
                      .map((e) => PaymentBillItem(
                            billItem: e,
                            border: itemBorder,
                          ))
                      .toList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
