import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded sound({Color color, int number}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$number.wav');
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            sound(color: Colors.red, number: 1),
            sound(color: Colors.pink, number: 2),
            sound(color: Colors.blue, number: 3),
            sound(color: Colors.purple, number: 4),
            sound(color: Colors.grey, number: 5),
            sound(color: Colors.white, number: 6),
          ],
        )),
      ),
    );
  }
}
