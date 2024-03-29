import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final player = AudioCache();

// An Expanded Flat Play Button for Notes
Expanded expandedFlatPlayButton(Color backGroundColor, int noteNum) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
          padding: const EdgeInsets.all(0), backgroundColor: backGroundColor),
      // padding: EdgeInsets.all(0.0),
      // color: backGroundColor,
      onPressed: () {
        player.play('note$noteNum.wav');
      },
      child: null,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              expandedFlatPlayButton(Colors.red, 1),
              expandedFlatPlayButton(Colors.orange, 2),
              expandedFlatPlayButton(Colors.yellow, 3),
              expandedFlatPlayButton(Colors.green, 4),
              expandedFlatPlayButton(Colors.teal, 5),
              expandedFlatPlayButton(Colors.blue, 6),
              expandedFlatPlayButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
