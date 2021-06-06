import 'package:flutter/material.dart';

import '../widgets/chess_radio_title_widget.dart';
import '../widgets/puzzle_widget.dart';
import '../widgets/chess_radio_drawer_widget.dart';

class PlayListScreen extends StatelessWidget {
  final audios = <String>[
    "assets/audio/test.wav",
    "assets/audio/test.wav",
    "assets/audio/test.wav",
  ];
  PlayListScreen();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Hero(
        tag: 'playlist',
        child: Scaffold(
          appBar: AppBar(
            title: ChessRadioTitleWidget(),
            backgroundColor: Colors.black,
            actions: [
              ChessRadioDrawerWidget(),
            ],
            leading: Icon(Icons.arrow_back),
          ),
          backgroundColor: Colors.white,
          body: Center(
            child: ListView.builder(
              itemCount: audios.length,
              itemBuilder: (context, index) {
                return PuzzleWidget();
              },
            ),
          ),
        ),
      ),
    );
  }
}
