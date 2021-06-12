import 'package:chessradio/model/voice.dart';
import 'package:flutter/material.dart';

import '../screens/playlist_screen.dart';

class StartButtonWidget extends StatelessWidget {
  late List _puzzles;

  StartButtonWidget(Voice voice) {
    _puzzles = voice.tracks;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PlayListScreen(_puzzles),
            ),
          );
        },
        child: Text(
          "Start",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
