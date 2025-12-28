import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const DrumMachine());
}

class DrumMachine extends StatelessWidget {
  const DrumMachine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Govde(),
      ),
    );
  }
}

class Govde extends StatelessWidget {

  final player = AudioCache();

  void sesiCal(String ses) {
    player.play('$ses.wav');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: buildDrumPad('bip', Colors.blueAccent),
                ),
                Expanded(
                  child: buildDrumPad('bongo', Colors.redAccent),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: buildDrumPad('clap3', Colors.brown),
                ),
                Expanded(
                  child: buildDrumPad('crash', Colors.orangeAccent),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: buildDrumPad('how', Colors.lightGreen),
                ),
                Expanded(
                  child: buildDrumPad('oobah', Colors.yellowAccent),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: buildDrumPad('ridebel', Colors.black),
                ),
                Expanded(
                  child: buildDrumPad('woo', Colors.deepPurple),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextButton buildDrumPad(String ses, Color renk) {
    return TextButton(
                  onPressed: () {
                    sesiCal(ses);
                  },
                  child: Container(
                    width: 200,
                    height: 150,
                    color: renk,
                  ),
                );
  }
}
