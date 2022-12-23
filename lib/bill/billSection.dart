import 'package:flutter/material.dart';
import 'package:pos_flutter_arronium/model/billItem.dart';
import './billItemsAdded.dart';
import './bottomBar.dart';

class BillSection extends StatefulWidget {
  const BillSection({
    Key? key,
    required this.bottomBarHeight,
  }) : super(key: key);
  final double bottomBarHeight;

  @override
  State<BillSection> createState() => _BillSectionState();
}

class _BillSectionState extends State<BillSection> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BillItemsAdded(),
          BottomBar(
            bottomBarHeight: widget.bottomBarHeight,
          ),
        ],
      ),
    );
  }
}
