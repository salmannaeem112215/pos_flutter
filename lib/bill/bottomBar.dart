import 'package:flutter/material.dart';
import 'package:pos_flutter_arronium/bill/bottomBarTotalAmount.dart';
import 'package:pos_flutter_arronium/bill/button.dart';
import 'package:pos_flutter_arronium/provider/billItems.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
    required this.bottomBarHeight,
  }) : super(key: key);
  final double bottomBarHeight;

  @override
  Widget build(BuildContext context) {
    final billItemsData = Provider.of<BillItems>(context);
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          border: Border.all(
            color: Colors.white60,
            width: 1,
          )),
      height: bottomBarHeight,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Button(
                title: "New Order",
                icon: Icon(Icons.add, size: 45),
                buttonFunction: () {
                  print('New Order');
                },
                disable: true,
              ),
              Button(
                title: "Del Order",
                icon: Icon(Icons.delete, size: 45),
                buttonFunction: billItemsData.deleteAllItems,
              ),
            ],
          ),
        ),
        BottomBarTotalAmount(
            totalAmount: billItemsData.getTotalAmount().toString()),
      ]),
    );
  }
}
