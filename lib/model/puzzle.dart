class Puzzle {
  final String _audioAsset;
  final String _audioSolutionAsset;
  final String _imageSolutionAsset;

  Puzzle(this._audioAsset, this._audioSolutionAsset, this._imageSolutionAsset);

  String get audioPuzzle => _audioAsset;
  String get audioSolutionAsset => _audioSolutionAsset;
  String get imageSolutionAsset => _imageSolutionAsset;
}
