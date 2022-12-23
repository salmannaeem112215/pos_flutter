import 'package:flutter/material.dart';
import 'package:pos_flutter_arronium/payment/payment_ItemDetails.dart';
import 'package:pos_flutter_arronium/payment/payment_billAction.dart';
import 'package:pos_flutter_arronium/payment/payment_billItem.dart';
import '../model/billItem.dart';

import './paymentHeading.dart';

class PaymentScreen extends StatelessWidget {
  static const String nameRoute = '/Payment';

  PaymentScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _borderSide = BorderSide(
      color: Colors.white30,
    );
    final _itemHeadingBorder = Border(bottom: _borderSide, right: _borderSide);
    final _itemsBodyBorder = Border(right: _borderSide);
    final _itemBorder = Border(bottom: _borderSide);
    final _actionHeadingBorder = Border(bottom: _borderSide);

    return Scaffold(
      body: Container(
        child: Row(
          children: [
            PaymentItemDetails(
              itemHeadingBorder: _itemHeadingBorder,
              itemsBodyBorder: _itemsBodyBorder,
              itemBorder: _itemBorder,
            ),
            PaymentBillAction(
              itemHeadingBorder: _itemHeadingBorder,
            ),
          ],
        ),
      ),
    );
  }
}
