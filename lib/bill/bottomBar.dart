import 'package:flutter/material.dart';
import 'package:pos_flutter_arronium/bill/bottomBarTotalAmount.dart';
import 'package:pos_flutter_arronium/bill/button.dart';
import '../model/billItem.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
    required this.bottomBarHeight,
    required this.billItem,
    required this.deleteOrder,
  }) : super(key: key);
  final double bottomBarHeight;
  final List<BillItem> billItem;
  final Function deleteOrder;

  double getTotalAmount() {
    double totalAmount = 0;
    billItem.forEach((element) {
      totalAmount += element.price * element.qty;
    });
    return totalAmount;
  }

  @override
  Widget build(BuildContext context) {
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
                buttonFunction: deleteOrder,
              ),
            ],
          ),
        ),
        BottomBarTotalAmount(totalAmount: getTotalAmount().toString()),
      ]),
    );
  }
}
