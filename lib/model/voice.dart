import 'package:chessradio/model/puzzle.dart';

class Voice {
  String _name;
  String _image;
  List<Puzzle> _tracks;

  Voice(this._name, this._image, this._tracks);

  String get name => _name;
  String get image => _image;
  List<Puzzle> get tracks => _tracks;
}
