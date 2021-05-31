import 'package:flutter/material.dart';

import '../../chessRadioTitle.dart';
import '../widgets/puzzle_widget.dart';
import '../../chessRadioDrawer.dart';

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
            title: ChessRadioTitle(),
            backgroundColor: Colors.black,
          ),
          backgroundColor: Colors.white,
          drawer: Drawer(
            child: ChessRadioDrawer(),
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
