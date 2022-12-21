import 'package:flutter/material.dart';
import 'package:pos_flutter_arronium/bill/button.dart';
import 'package:pos_flutter_arronium/bill/largeButton.dart';
import 'package:pos_flutter_arronium/payment/payment_screen.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
    required this.sideBarWidth,
    required this.deleteItem,
    required this.goPaymentScreen,
  }) : super(key: key);
  final double sideBarWidth;
  final Function deleteItem;
  final Function goPaymentScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        border: Border.all(
          color: Colors.white60,
          width: 1,
        ),
      ),
      width: sideBarWidth,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Button(
                      title: "Del Item",
                      icon: Icon(Icons.delete, size: 30),
                      buttonFunction: deleteItem,
                    ),
                    Button(
                      title: "Quantity",
                      icon: Icon(Icons.edit_note, size: 30),
                      buttonFunction: () {},
                      disable: true,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Button(
                      title: "Discount",
                      icon: Icon(Icons.percent, size: 30),
                      buttonFunction: () {},
                      disable: true,
                    ),
                    Button(
                      title: "Refund",
                      icon: Icon(Icons.add_shopping_cart_sharp, size: 30),
                      buttonFunction: () {},
                      disable: true,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                LargeButton(
                  title: 'Cash',
                  width: sideBarWidth,
                  buttonFunction: () => goPaymentScreen(),
                  // disable: true,
                ),
                LargeButton(
                  title: 'JazzCash/Easypaisa',
                  width: sideBarWidth,
                  buttonFunction: () {
                    print('JazzCash/Easypaisa');
                  },
                  disable: true,
                ),
              ],
            ),
            Row(
              children: [
                Button(
                  title: "Lock Sales",
                  icon: Icon(Icons.lock, size: 30),
                  buttonFunction: () {},
                  disable: true,
                ),
                Button(
                  title: "Options",
                  icon: Icon(Icons.settings, size: 30),
                  buttonFunction: () {},
                  disable: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
