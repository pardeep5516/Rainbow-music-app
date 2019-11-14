import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());
void playSound(int soundNumber) {
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

Expanded buildKey({Color color, int soundNumber}) {
  return Expanded(
    child: FlatButton(
      onPressed: () {
        playSound(soundNumber);
      },
      color: color,
      child: null,
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.brown.shade300,
          title: Center(
            child: Text('Rainbow music'),
          ),
        ),
        body: SafeArea(
            child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.pink, soundNumber: 3),
              buildKey(color: Colors.purple, soundNumber: 4),
              buildKey(color: Colors.amber, soundNumber: 5),
              buildKey(color: Colors.green, soundNumber: 6),
              buildKey(color: Colors.cyan, soundNumber: 7),
            ],
          ),
        )),
      ),
    );
  }
}
