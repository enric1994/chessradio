import 'package:flutter/material.dart';

import './chessRadioTitle.dart';
import './track.dart';

class PlayListPage extends StatelessWidget {
  final String data;

  PlayListPage(this.data);

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
              Track(),
              Track(),
              Track(),
              Track(),
              Track(),
              Track(),
              Track(),
              Track(),
              Track(),
              Track(),
              Track(),
              Track(),
              Track(),
              Track(),
              Track(),
            ],
          )),
        ),
      ),
    );
  }
}
