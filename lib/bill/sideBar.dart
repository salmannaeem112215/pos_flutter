import 'package:flutter/material.dart';
import 'package:pos_flutter_arronium/bill/button.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
    required this.sideBarWidth,
    required this.deleteItem,
  }) : super(key: key);
  final double sideBarWidth;
  final Function deleteItem;

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
          children: [
            Button(
              title: "Del Item",
              icon: Icon(Icons.delete, size: 45),
              buttonFunction: deleteItem,
            ),
          ],
        ),
      ),
    );
  }
}
