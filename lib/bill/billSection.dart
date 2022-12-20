import 'package:flutter/material.dart';
import 'package:pos_flutter_arronium/model/billItem.dart';
import './billItemsAdded.dart';
import './bottomBar.dart';

class BillSection extends StatefulWidget {
  const BillSection({
    Key? key,
    required this.bottomBarHeight,
    required this.billItem,
    required this.deleteOrder,
    required this.setSelectedItem,
  }) : super(key: key);
  final double bottomBarHeight;
  final List<BillItem> billItem;

  final Function deleteOrder;
  final Function setSelectedItem;

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
          BillItemsAdded(
            billItem: widget.billItem,
            setSelectedItem: widget.setSelectedItem,
          ),
          BottomBar(
            bottomBarHeight: widget.bottomBarHeight,
            billItem: widget.billItem,
            deleteOrder: widget.deleteOrder,
          ),
        ],
      ),
    );
  }
}
