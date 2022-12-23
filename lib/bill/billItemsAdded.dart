import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/billItems.dart';
import '../model/billItem.dart';
import './billItemAddedHeading.dart';
import './billItemAddedItem.dart';

class BillItemsAdded extends StatelessWidget {
  const BillItemsAdded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final billItemsData = Provider.of<BillItems>(context, listen: true);
    final List<BillItem> billItems = billItemsData.billItems;
    int num = 0;
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
              ...billItems
                  .map((e) => BillItemAddedItem(
                        num: num++,
                        name: e.name,
                        qty: e.qty,
                        price: e.price,
                        selected: e.selected,
                      ))
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
