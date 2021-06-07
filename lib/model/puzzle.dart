import 'package:just_audio/just_audio.dart';

class Data {
  Map audioAssets;
  Map audioSolutionAssets;
  String imageSolutionAsset;

  final data = [
    Data(
      {
        "female1": "assets/puzzles/1_challenge_female1.mp3",
        "female2": "assets/puzzles/1_challenge_female2.mp3",
        "male1": "assets/puzzles/1_challenge_male1.mp3",
        "male2": "assets/puzzles/1_challenge_male2.mp3",
      },
      {
        "female1": "assets/puzzles/1_solution_female1.mp3",
        "female2": "assets/puzzles/1_solution_female2.mp3",
        "male1": "assets/puzzles/1_solution_male1.mp3",
        "male2": "assets/puzzles/1_solution_male2.mp3",
      },
      "assets/puzzles/1.jpeg",
    ),
    Data(
      {
        "female1": "assets/puzzles/2_challenge_female1.mp3",
        "female2": "assets/puzzles/2_challenge_female2.mp3",
        "male1": "assets/puzzles/2_challenge_male1.mp3",
        "male2": "assets/puzzles/2_challenge_male2.mp3",
      },
      {
        "female1": "assets/puzzles/2_solution_female1.mp3",
        "female2": "assets/puzzles/2_solution_female2.mp3",
        "male1": "assets/puzzles/2_solution_male1.mp3",
        "male2": "assets/puzzles/2_solution_male2.mp3",
      },
      "assets/puzzles/2.jpeg",
    ),
    Data(
      {
        "female1": "assets/puzzles/3_challenge_female1.mp3",
        "female2": "assets/puzzles/3_challenge_female2.mp3",
        "male1": "assets/puzzles/3_challenge_male1.mp3",
        "male2": "assets/puzzles/3_challenge_male2.mp3",
      },
      {
        "female1": "assets/puzzles/3_solution_female1.mp3",
        "female2": "assets/puzzles/3_solution_female2.mp3",
        "male1": "assets/puzzles/3_solution_male1.mp3",
        "male2": "assets/puzzles/3_solution_male2.mp3",
      },
      "assets/puzzles/3.jpeg",
    ),
    Data(
      {
        "female1": "assets/puzzles/4_challenge_female1.mp3",
        "female2": "assets/puzzles/4_challenge_female2.mp3",
        "male1": "assets/puzzles/4_challenge_male1.mp3",
        "male2": "assets/puzzles/4_challenge_male2.mp3",
      },
      {
        "female1": "assets/puzzles/4_solution_female1.mp3",
        "female2": "assets/puzzles/4_solution_female2.mp3",
        "male1": "assets/puzzles/4_solution_male1.mp3",
        "male2": "assets/puzzles/4_solution_male2.mp3",
      },
      "assets/puzzles/4.jpeg",
    ),
  ];

  Data(this.audioAssets, this.audioSolutionAssets, this.imageSolutionAsset);
}

class Puzzle {
  late AudioSource _audioPuzzle;
  late AudioSource _audioSolution;
  String _imageSolutionAsset;

  Puzzle(audioAsset, audioSolutionAsset, this._imageSolutionAsset) {
    _audioPuzzle = AudioSource.uri(
      Uri.parse(audioAsset),
    );
    _audioSolution = AudioSource.uri(
      Uri.parse(audioSolutionAsset),
    );
  }

  AudioSource get audioPuzzle {
    return _audioPuzzle;
  }
}
