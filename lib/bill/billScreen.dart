import 'package:flutter/material.dart';

class BillScreen extends StatefulWidget {
  const BillScreen({Key? key}) : super(key: key);

  @override
  State<BillScreen> createState() => _BillScreenState();
}

class _BillScreenState extends State<BillScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Container(
            height: 50,
            color: Colors.amber,
          ),
          Expanded(
            child: Container(
              color: Colors.black38,
              child: Row(
                children: [
                  Flexible(
                      flex: 3,
                      child: Container(
                        color: Colors.deepPurple,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                color: Color.fromARGB(255, 53, 155, 67),
                              ),
                            ),
                            Container(
                              height: 150,
                              color: Colors.deepOrangeAccent,
                            ),
                          ],
                        ),
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        color: Color.fromARGB(255, 112, 99, 136),
                      )),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
