import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneMiniApp());

class XylophoneMiniApp extends StatelessWidget {
  void playSound(int SoundNumber) {
    final player = AudioCache();
    player.play('note$SoundNumber.wav');
  }

  Expanded call({Color color, int SoundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(SoundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              call(color: Colors.redAccent, SoundNumber: 1),
              call(color: Colors.orangeAccent, SoundNumber: 2),
              call(color: Colors.greenAccent, SoundNumber: 3),
              call(color: Colors.blueAccent, SoundNumber: 4),
              call(color: Colors.yellowAccent, SoundNumber: 5),
              call(color: Colors.pinkAccent, SoundNumber: 6),
              call(color: Colors.purpleAccent, SoundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
