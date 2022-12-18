import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button(
      {Key? key,
      required this.icon,
      required this.title,
      required this.buttonFunction})
      : super(key: key);

  final Icon icon;
  final String title;
  Function buttonFunction;

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
        onPressed: () => {
          buttonFunction(),
        },
        child: Container(
          width: 75,
          height: 75,
          child: Center(
            child: Column(
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
