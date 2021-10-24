import 'package:dices/games/dices/dice.dart';
import 'package:dices/games/dices/dices.dart';
import 'package:dices/games/goat_game/home.dart';
import 'package:dices/games/jardinains/lib/view.dart';
import 'package:dices/games/maze/maze.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  final List<String> gameName = [
    'Dice',
    'Dices',
    'Jardinains',
    'Maze',
  ];

  final List<MaterialPageRoute> route = [
    MaterialPageRoute(
      builder: (context) => DicePage(),
    ),
    MaterialPageRoute(
      builder: (context) => DicesPage(),
    ),
    MaterialPageRoute(
      builder: (context) => MyApp(),
    ),
    MaterialPageRoute(
      builder: (context) => MazeScreen(),
    ),
    MaterialPageRoute(
      builder: (context) => GoatPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Games'),
      ),
      body: ListView(
        children: List.generate(
          gameName.length,
          (index) => ListTile(
            onTap: () {
              Navigator.push(context, route[index]);
            },
            leading: Icon(
              Icons.ac_unit,
              color: Colors.red,
            ),
            title: Text(
              gameName[index],
              textAlign: TextAlign.justify,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
