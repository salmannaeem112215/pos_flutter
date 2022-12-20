import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  const LargeButton({
    Key? key,
    required this.title,
    required this.buttonFunction,
    this.disable = false,
    this.height = 50,
    this.width = 150,
  }) : super(key: key);

  final String title;
  final double width;
  final double height;
  final bool disable;

  final Function buttonFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            child: Text(title),
          ),
        ),
      ),
    );
  }
}
