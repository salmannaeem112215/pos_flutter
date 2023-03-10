import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.icon,
    required this.title,
    required this.buttonFunction,
    this.disable = false,
    this.height = 75,
    this.width = 75,
  }) : super(key: key);

  final Icon icon;
  final String title;
  final double width;
  final double height;
  final bool disable;
  final Function buttonFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        onPressed: (disable)
            ? null
            : () {
                buttonFunction();
              },
        child: Container(
          width: width,
          height: height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                icon,
                Text(title),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
