import 'package:flutter/material.dart';
import 'package:pos_flutter_arronium/bill/topBarBill.dart';

class BillScreen extends StatefulWidget {
  const BillScreen({Key? key}) : super(key: key);
  final double _sideBarWidth = 300;
  final double _topBarHeight = 50;
  final double _bottomBarHeight = 150;

  @override
  State<BillScreen> createState() => _BillScreenState();
}

class _BillScreenState extends State<BillScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          // Top Bar
          TopBarBill(topBarHeight: widget._topBarHeight),
          Expanded(
            child: Container(
              color: Colors.black38,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.deepPurple,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              color: Color.fromARGB(255, 53, 155, 67),
                            ),
                          ),
                          //Bottom Bar
                          Container(
                            height: widget._bottomBarHeight,
                            color: Colors.deepOrangeAccent,
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Side Bar
                  Container(
                    width: widget._sideBarWidth,
                    color: Color.fromARGB(255, 112, 99, 136),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
