import 'package:flutter/material.dart';

import './billSection.dart';
import './sideBar.dart';
import './topBarBill.dart';

class BillScreen extends StatefulWidget {
  final double _sideBarWidth = 265;
  final double _topBarHeight = 50;
  final double _bottomBarHeight = 110;

  @override
  State<BillScreen> createState() => _BillScreenState();
}

class _BillScreenState extends State<BillScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          TopBarBill(
            topBarHeight: widget._topBarHeight,
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                BillSection(
                  bottomBarHeight: widget._bottomBarHeight,
                ),
                SideBar(
                  sideBarWidth: widget._sideBarWidth,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
