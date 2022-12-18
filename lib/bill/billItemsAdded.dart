import 'package:flutter/material.dart';
import 'package:pos_flutter_arronium/bill/billItemAddedHeading.dart';
import 'package:pos_flutter_arronium/bill/billItemAddedItem%20copy.dart';
import '../model/billItem.dart';

class BillItemsAdded extends StatelessWidget {
  const BillItemsAdded({Key? key, required this.billItem}) : super(key: key);
  final List<BillItem> billItem;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark,
          border: Border.all(
            color: Colors.white60,
            width: 1,
          ),
        ),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              BillItemAddedHeading(),
              ...billItem
                  .map((e) => BillItemAddedItem(
                        name: e.name,
                        qty: e.qty,
                        price: e.price,
                      ))
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
