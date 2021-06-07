import 'package:just_audio/just_audio.dart';

class Data {
  Map audioAssets;
  Map audioSolutionAssets;
  String imageSolutionAsset;

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
