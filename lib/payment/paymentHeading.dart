import 'package:flutter/material.dart';

class PaymentHeading extends StatelessWidget {
  const PaymentHeading({
    Key? key,
    required this.title,
    required this.border,
    required this.color,
  }) : super(key: key);

  final String title;
  final Border border;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: color,
        border: border,
      ),
      height: 50,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,
        ),
      ),
    );
  }
}
