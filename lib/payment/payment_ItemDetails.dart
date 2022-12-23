import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './paymentHeading.dart';
import './payment_billItem.dart';
import '../model/billItem.dart';
import '../provider/billItems.dart';

class PaymentItemDetails extends StatelessWidget {
  const PaymentItemDetails({
    Key? key,
    required this.itemHeadingBorder,
    required this.itemsBodyBorder,
    required this.itemBorder,
  }) : super(key: key);

  final Border itemHeadingBorder;
  final Border itemsBodyBorder;
  final Border itemBorder;

  @override
  Widget build(BuildContext context) {
    final List<BillItem> billItem = Provider.of<BillItems>(context).billItems;
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

  Widget paymentItemHeading(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorDark,
        border: itemHeadingBorder,
      ),
      height: 50,
      child: Text(
        'Items',
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,
        ),
      ),
    );
  }
}
