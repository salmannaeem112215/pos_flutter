import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/billItems.dart';

class BillItemAddedItem extends StatelessWidget {
  const BillItemAddedItem({
    Key? key,
    required this.num,
    required this.name,
    required this.price,
    required this.qty,
    required this.selected,
  }) : super(key: key);
  final int num;
  final String name;
  final double qty;
  final double price;
  final bool selected;

  double getAmount() {
    return qty * price;
  }

  @override
  Widget build(BuildContext context) {
    final billItemsData = Provider.of<BillItems>(context);
    final TextStyle headingStyle = TextStyle(
      color: Colors.white,
      fontSize: 14,
    );
    return GestureDetector(
      onTap: () {
        billItemsData.setSelectedItem = num;
      },
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.white30,
            ),
          ),
          color: (num == billItemsData.selectedItem)
              ? Color(0xAD1BA0E2)
              : Color(0x001BA0E2),
        ),
        child: Row(
          children: [
            Expanded(
                child: Text(
              "#" + (num + 1).toString() + "  " + name,
              style: headingStyle,
            )),
            Container(
              alignment: Alignment.center,
              width: 120,
              child: Text(
                qty.toString(),
                style: headingStyle,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 120,
              child: Text(
                price.toString(),
                style: headingStyle,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 120,
              child: Text(
                getAmount().toString(),
                style: headingStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
