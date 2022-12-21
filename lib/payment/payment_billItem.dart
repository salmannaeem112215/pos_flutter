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
      padding: EdgeInsets.fromLTRB(8, 4, 8, 3),
      decoration: BoxDecoration(border: border),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                billItem.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                billItem.qty.toStringAsFixed(0) +
                    ' x ' +
                    billItem.price.toStringAsFixed(2),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          Text(
            (billItem.qty * billItem.price).toStringAsFixed(2),
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
