import 'package:chessradio/model/puzzle.dart';
import 'package:flutter/material.dart';

import '../screens/playlist_screen.dart';

final data = [
  Data(
    {
      "Anna Rudolf": "assets/puzzles/1_challenge_female1.mp3",
      "Lile Koridze": "assets/puzzles/1_challenge_female2.mp3",
      "Hikaru Nakamura": "assets/puzzles/1_challenge_male1.mp3",
      "Voyboy": "assets/puzzles/1_challenge_male2.mp3",
    },
    {
      "Anna Rudolf": "assets/puzzles/1_solution_female1.mp3",
      "Lile Koridze": "assets/puzzles/1_solution_female2.mp3",
      "Hikaru Nakamura": "assets/puzzles/1_solution_male1.mp3",
      "Voyboy": "assets/puzzles/1_solution_male2.mp3",
    },
    "assets/puzzles/1.jpeg",
  ),
  Data(
    {
      "Anna Rudolf": "assets/puzzles/2_challenge_female1.mp3",
      "Lile Koridze": "assets/puzzles/2_challenge_female2.mp3",
      "Hikaru Nakamura": "assets/puzzles/2_challenge_male1.mp3",
      "Voyboy": "assets/puzzles/2_challenge_male2.mp3",
    },
    {
      "Anna Rudolf": "assets/puzzles/2_solution_female1.mp3",
      "Lile Koridze": "assets/puzzles/2_solution_female2.mp3",
      "Hikaru Nakamura": "assets/puzzles/2_solution_male1.mp3",
      "Voyboy": "assets/puzzles/2_solution_male2.mp3",
    },
    "assets/puzzles/2.jpeg",
  ),
  Data(
    {
      "Anna Rudolf": "assets/puzzles/3_challenge_female1.mp3",
      "Lile Koridze": "assets/puzzles/3_challenge_female2.mp3",
      "Hikaru Nakamura": "assets/puzzles/3_challenge_male1.mp3",
      "Voyboy": "assets/puzzles/3_challenge_male2.mp3",
    },
    {
      "Anna Rudolf": "assets/puzzles/3_solution_female1.mp3",
      "Lile Koridze": "assets/puzzles/3_solution_female2.mp3",
      "Hikaru Nakamura": "assets/puzzles/3_solution_male1.mp3",
      "Voyboy": "assets/puzzles/3_solution_male2.mp3",
    },
    "assets/puzzles/3.jpeg",
  ),
  Data(
    {
      "Anna Rudolf": "assets/puzzles/4_challenge_female1.mp3",
      "Lile Koridze": "assets/puzzles/4_challenge_female2.mp3",
      "Hikaru Nakamura": "assets/puzzles/4_challenge_male1.mp3",
      "Voyboy": "assets/puzzles/4_challenge_male2.mp3",
    },
    {
      "Anna Rudolf": "assets/puzzles/4_solution_female1.mp3",
      "Lile Koridze": "assets/puzzles/4_solution_female2.mp3",
      "Hikaru Nakamura": "assets/puzzles/4_solution_male1.mp3",
      "Voyboy": "assets/puzzles/4_solution_male2.mp3",
    },
    "assets/puzzles/4.jpeg",
  ),
];

final List voices = [
  "Anna Rudolf",
  "Lile Koridze",
  "Hikaru Nakamura",
  "Voyboy",
];

class StartButtonWidget extends StatelessWidget {
  late List<Puzzle> _puzzles;

  StartButtonWidget(String voice) {
    _puzzles = data
        .map((e) => !voices.contains(voice)
            ? new Puzzle(e.audioAssets['Lile Koridze'],
                e.audioSolutionAssets['Lile Koridze'], e.imageSolutionAsset)
            : new Puzzle(e.audioAssets[voice], e.audioSolutionAssets[voice],
                e.imageSolutionAsset))
        .toList();
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
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
