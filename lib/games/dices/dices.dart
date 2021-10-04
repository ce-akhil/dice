
import 'dart:math';

import 'package:flutter/material.dart';

class DicesPage extends StatefulWidget {
  @override
  _DicesPageState createState() => _DicesPageState();
}

class _DicesPageState extends State<DicesPage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void changeDiceFace() {
    setState(
          () {
        leftDiceNumber = Random().nextInt(6) + 1;
        rightDiceNumber = Random().nextInt(5) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dices'),
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('assets/dices/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('assets/dices/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
