import 'dart:html';

import 'package:flutter/material.dart';

class PaymentActionButtons extends StatelessWidget {
  PaymentActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
        ),
        child: Row(
          children: [
            Container(
              width: 150,
              child: Column(
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).errorColor,
                    ),
                    onPressed: null,
                    child: Container(
                      height: 50,
                      child: Row(
                        children: [
                          Icon(Icons.cancel),
                          SizedBox(width: 30),
                          Text(
                            'Cancel',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  _headingText('Payment Type'),
                  Container(
                    height: 50,
                    child: Text('hi'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget _headingText(String text) {
    return Container(
      height: 50,
      padding: EdgeInsets.all(8),
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w100,
        ),
      ),
    );
  }
}
