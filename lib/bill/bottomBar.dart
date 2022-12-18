import 'package:flutter/material.dart';
import 'package:pos_flutter_arronium/bill/bottomBarTotalAmount.dart';
import '../model/billItem.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
    required this.bottomBarHeight,
    required this.billItem,
  }) : super(key: key);
  final double bottomBarHeight;
  final List<BillItem> billItem;

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
        Container(
          child: Row(
            children: [],
          ),
        ),
        BottomBarTotalAmount(totalAmount: getTotalAmount().toString()),
      ]),
    );
  }
}
