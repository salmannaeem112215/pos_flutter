import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
    required this.bottomBarHeight,
  }) : super(key: key);
  final double bottomBarHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          border: Border.all(
            color: Colors.white60,
            width: 1,
          )),
      height: bottomBarHeight,
    );
  }
}
