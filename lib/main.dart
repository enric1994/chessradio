import 'package:flutter/material.dart';

import 'package:chessradio/checkMateValue.dart';
import 'package:chessradio/startButton.dart';

import './voiceSelector.dart';
import './piecesValue.dart';
// import './webFooter.dart';
import 'chessRadioTitle.dart';
import './chessRadioDrawer.dart';

void main() {
  runApp(ChessRadio());
}

class ChessRadio extends StatefulWidget {
  @override
  _ChessRadioState createState() => _ChessRadioState();
}

class _ChessRadioState extends State<ChessRadio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: ChessRadioTitle(),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            PiecesNumber(),
            CheckMateValue(),
            VoiceSelector(),
            StartButton(),
            // WebFooter(),
          ],
        ),
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: ChessRadioDrawer(),
        ),
      ),
    );
  }
}
