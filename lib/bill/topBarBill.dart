import 'package:flutter/material.dart';

class TopBarBill extends StatefulWidget {
  const TopBarBill({
    Key? key,
    required this.topBarHeight,
  }) : super(key: key);
  final double topBarHeight;
  @override
  State<TopBarBill> createState() => _TopBarBillState();
}

class _TopBarBillState extends State<TopBarBill> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.topBarHeight,
      color: Theme.of(context).backgroundColor,
    );
  }
}
