import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key, required this.sideBarWidth}) : super(key: key);
  final double sideBarWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        border: Border.all(
          color: Colors.white60,
          width: 1,
        ),
      ),
      width: sideBarWidth,
    );
  }
}
