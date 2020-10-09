import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void playsound(int i) {
      final player = AudioCache();
      player.play('note$i.wav');
    }

    Flexible buildKey(MaterialColor color, int i) {
      return Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            playsound(i);
          },
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.teal, 2),
              buildKey(Colors.orange, 3),
              buildKey(Colors.lightGreen, 4),
              buildKey(Colors.purple, 5),
              buildKey(Colors.yellow, 6),
              buildKey(Colors.blue, 7),
            ],
          ),
        ),
      ),
    );
  }
}
