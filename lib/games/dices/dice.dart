
import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void changeDiceFace() {
    setState(
          () {
        leftDiceNumber = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice'),
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: MaterialButton(
          onPressed: () {
            changeDiceFace();
          },
          child: Image.asset('assets/dices/dice$leftDiceNumber.png'),
        ),
      ),
    );
  }
}
