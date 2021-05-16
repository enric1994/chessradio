import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

import './voiceSelector.dart';

void main() {
  runApp(ChessRadio());
}

class ChessRadio extends StatefulWidget {
  @override
  _ChessRadioState createState() => _ChessRadioState();
}

class _ChessRadioState extends State<ChessRadio> {
  double _checkMateValue = 1;
  double _speedValue = 1;
  double _piecesValue = 8;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chess Radio'),
          backgroundColor: const Color(0xfff4dd29),
        ),
        body: Center(
          child: new ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(20.0),
              children: [
                Row(
                  children: [
                    Text('Number of pieces: '),
                    Text(
                      _piecesValue.round().toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Slider(
                  value: _piecesValue,
                  min: 4,
                  max: 20,
                  divisions: 16,
                  label: _piecesValue.round().toString() + ' pieces',
                  onChanged: (value) {
                    setState(() {
                      _piecesValue = value;
                    });
                  },
                ),
                Row(
                  children: [
                    Text('Mate in: '),
                    Text(_checkMateValue.round().toString(),
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Slider(
                  value: _checkMateValue,
                  min: 1,
                  max: 4,
                  divisions: 3,
                  label: 'M' + _checkMateValue.round().toString(),
                  onChanged: (value) {
                    setState(() {
                      _checkMateValue = value;
                    });
                  },
                ),
                VoiceSelector(),
                Center(
                  child: ElevatedButton(
                    child: Text('Start!'),
                    onPressed: null,
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
