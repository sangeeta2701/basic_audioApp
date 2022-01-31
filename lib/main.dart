import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text('Click me '),
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
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.yellowAccent, soundNumber: 2),
              buildKey(color: Colors.lightBlueAccent, soundNumber: 3),
              buildKey(color: Colors.greenAccent, soundNumber: 4),
              buildKey(color: Colors.pinkAccent, soundNumber: 5),
              buildKey(color: Colors.purple, soundNumber: 6),
              buildKey(color: Colors.orange, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
