import 'package:flutter/material.dart';

import '../widgets/chess_radio_title_widget.dart';
import '../widgets/puzzle_widget.dart';
import '../widgets/chess_radio_drawer_widget.dart';

class PlayListScreen extends StatelessWidget {
  final String data;

  PlayListScreen(this.data);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Hero(
        tag: 'playlist',
        child: Scaffold(
          appBar: AppBar(
            title: ChessRadioTitleWidget(),
            backgroundColor: Colors.black,
          ),
          backgroundColor: Colors.white,
          drawer: Drawer(
            child: ChessRadioDrawerWidget(),
          ),
          body: Center(
              child: ListView(
            children: [
              Container(
                child: Row(
                  children: [
                    Text('Autoplay:'),
                    Switch(
                      value: true,
                      onChanged: null,
                    ),
                  ],
                ),
              ),
              PuzzleWidget(),
              PuzzleWidget(),
            ],
          )),
        ),
      ),
    );
  }
}
