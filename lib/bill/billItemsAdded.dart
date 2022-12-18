import 'package:flutter/material.dart';

class BillItemsAdded extends StatelessWidget {
  const BillItemsAdded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark,
          border: Border.all(
            color: Colors.white60,
            width: 1,
          ),
        ),
      ),
    );
  }
}
