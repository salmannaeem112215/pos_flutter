import 'package:flutter/material.dart';
import 'package:pos_flutter_arronium/model/billItem.dart';

class PaymentBillItem extends StatelessWidget {
  const PaymentBillItem({
    Key? key,
    required this.billItem,
    required this.border,
  }) : super(key: key);
  final BillItem billItem;
  final Border border;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 3),
      decoration: BoxDecoration(border: border),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Name(),
              QtyPrice(),
            ],
          ),
          TotalPrice(),
        ],
      ),
    );
  }

  Widget Name() {
    return Text(
      billItem.name,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget QtyPrice() {
    return Text(
      billItem.qty.toStringAsFixed(0) +
          ' x ' +
          billItem.price.toStringAsFixed(2),
      style: const TextStyle(
        color: Colors.white,
        fontSize: 13,
      ),
    );
  }

  Widget TotalPrice() {
    return Text(
      (billItem.qty * billItem.price).toStringAsFixed(2),
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
