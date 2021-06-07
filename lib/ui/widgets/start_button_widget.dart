import 'package:chessradio/model/puzzle.dart';
import 'package:flutter/material.dart';

import '../screens/playlist_screen.dart';

class StartButtonWidget extends StatelessWidget {
  final _puzzlePlaylist = [
    Puzzle(
      "assets/puzzles/1_challenge_female1.mp3",
      "assets/puzzles/1_solution_female1.mp3",
      "assets/puzzles/1.jpeg",
    ),
    Puzzle(
      "assets/puzzles/2_challenge_female2.mp3",
      "assets/puzzles/2_solution_female2.mp3",
      "assets/puzzles/2.jpeg",
    ),
    Puzzle(
      "assets/puzzles/3_challenge_male1.mp3",
      "assets/puzzles/3_solution_male1.mp3",
      "assets/puzzles/3.jpeg",
    ),
    Puzzle(
      "assets/puzzles/4_challenge_male2.mp3",
      "assets/puzzles/4_solution_male2.mp3",
      "assets/puzzles/4.jpeg",
    ),
  ];

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
              builder: (context) => PlayListScreen(_puzzlePlaylist),
            ),
          );
        },
        child: Text(
          "Start",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
