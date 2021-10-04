import 'package:flutter/material.dart';
import 'package:maze/maze.dart';

class MazeScreen extends StatefulWidget {
  @override
  _MazeScreenState createState() => _MazeScreenState();
}

class _MazeScreenState extends State<MazeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Maze(
          player: MazeItem(
              'https://image.flaticon.com/icons/png/512/808/808433.png',
              ImageType.network),
          columns: 12,
          rows: 12,
          wallThickness: 6.0,
          wallColor: Theme.of(context).primaryColor,
          finish: MazeItem(
              'https://image.flaticon.com/icons/png/512/1506/1506339.png',
              ImageType.network),
          onFinish: () => print('Congrats you finished!'),
        ),
      ),
    );
  }
}
