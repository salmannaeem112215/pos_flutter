import 'package:flutter/material.dart';
import './billItemAddedHeading.dart';
import './billItemAddedItem.dart';
import '../model/billItem.dart';

class BillItemsAdded extends StatelessWidget {
  const BillItemsAdded(
      {Key? key, required this.billItem, required this.setSelectedItem})
      : super(key: key);
  final List<BillItem> billItem;
  final Function setSelectedItem;

  @override
  Widget build(BuildContext context) {
    int num = 1;
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
                        num: num++,
                        name: e.name,
                        qty: e.qty,
                        price: e.price,
                        selected: e.selected,
                        setSelectedItem: setSelectedItem,
                      ))
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
