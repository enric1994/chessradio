import 'package:chessradio/ui/screens/selector_screen.dart';
import 'package:chessradio/ui/widgets/chess_radio_drawer_widget.dart';
import 'package:chessradio/ui/widgets/chess_radio_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_session/audio_session.dart';
import 'package:flutter/services.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:math';

class PlayListScreen extends StatefulWidget {
  final List _puzzlePlaylist;

  PlayListScreen(this._puzzlePlaylist);

  @override
  _PlayListScreenState createState() => _PlayListScreenState();
}

class _PlayListScreenState extends State<PlayListScreen> {
  late AudioPlayer _player;
  late ConcatenatingAudioSource _playlist;
  late ConcatenatingAudioSource _solutionPlaylist;

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    _playlist = ConcatenatingAudioSource(
        children: widget._puzzlePlaylist
            .map((puzzle) => AudioSource.uri(
                  Uri.parse(puzzle.audioPuzzle),
                ))
            .toList());
    _solutionPlaylist = ConcatenatingAudioSource(
        children: widget._puzzlePlaylist
            .map((puzzle) => AudioSource.uri(
                  Uri.parse(puzzle.audioSolutionAsset),
                ))
            .toList());
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Hero(
        tag: 'playlist',
        child: Scaffold(
          appBar: AppBar(
            title: ChessRadioTitleWidget('Train'),
            backgroundColor: Colors.black,
            actions: [
              ChessRadioDrawerWidget(),
            ],
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SelectorScreen(),
                  ),
                );
              },
            ),
          ),
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Center(
              child: Container(
                child: StreamBuilder<SequenceState?>(
                  stream: _player.sequenceStateStream,
                  builder: (context, snapshot) {
                    final state = snapshot.data;
                    final sequence = state?.sequence ?? [];
                    return ListView.builder(
                      itemCount: _playlist.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Row(
                            children: [
                              Container(
                                constraints: BoxConstraints(
                                    minWidth: 250, maxWidth: 400),
                                height: 200,
                                margin: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                ),
                                child: Track(
                                    _playlist[index], _solutionPlaylist[index]),
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                child: IconButton(
                                  icon: Icon(Icons.remove_red_eye),
                                  onPressed: () async {
                                    await showDialog(
                                        context: context,
                                        builder: (_) => ImageDialog(widget
                                            ._puzzlePlaylist[index]
                                            .imageSolutionAsset));
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Track extends StatefulWidget {
  final AudioSource source;
  final AudioSource solutionSource;

  Track(this.source, this.solutionSource);

  @override
  _TrackState createState() => _TrackState();
}

class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tracko(widget.source),
        Tracko(widget.solutionSource),
      ],
    );
  }
}

class Tracko extends StatefulWidget {
  final AudioPlayer _player = AudioPlayer();
  final AudioSource source;

  Tracko(this.source);

  @override
  _TrackoState createState() => _TrackoState();
}

class _TrackoState extends State<Tracko> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));
    _init();
  }

  Future<void> _init() async {
    final session = await AudioSession.instance;
    await session.configure(AudioSessionConfiguration.speech());
    // Listen to errors during playback.
    widget._player.playbackEventStream.listen((event) {},
        onError: (Object e, StackTrace stackTrace) {
      print('A stream error occurred: $e');
    });
    try {
      await widget._player.setAudioSource(widget.source);
    } catch (e) {
      // Catch load errors: 404, invalid url ...
      print("Error loading playlist: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        StreamBuilder<PlayerState>(
          stream: widget._player.playerStateStream,
          builder: (context, snapshot) {
            final playerState = snapshot.data;
            final processingState = playerState?.processingState;
            final playing = playerState?.playing;
            if (processingState == ProcessingState.loading ||
                processingState == ProcessingState.buffering) {
              return Container(
                margin: EdgeInsets.all(8.0),
                width: 40.0,
                height: 40.0,
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                  color: Colors.black,
                ),
              );
            } else if (playing != true) {
              return IconButton(
                icon: Icon(Icons.play_arrow),
                iconSize: 40,
                onPressed: widget._player.play,
              );
            } else if (processingState != ProcessingState.completed) {
              return IconButton(
                icon: Icon(Icons.pause),
                iconSize: 40,
                onPressed: widget._player.pause,
              );
            } else {
              return IconButton(
                icon: Icon(Icons.replay),
                iconSize: 40,
                onPressed: () => widget._player.seek(Duration.zero,
                    index: widget._player.effectiveIndices!.first),
              );
            }
          },
        ),
        StreamBuilder<Duration?>(
          stream: widget._player.durationStream,
          builder: (context, snapshot) {
            final duration = snapshot.data ?? Duration.zero;
            return StreamBuilder<PositionData>(
              stream: Rx.combineLatest2<Duration, Duration, PositionData>(
                  widget._player.positionStream,
                  widget._player.bufferedPositionStream,
                  (position, bufferedPosition) =>
                      PositionData(position, bufferedPosition)),
              builder: (context, snapshot) {
                final positionData =
                    snapshot.data ?? PositionData(Duration.zero, Duration.zero);
                var position = positionData.position;
                if (position > duration) {
                  position = duration;
                }
                var bufferedPosition = positionData.bufferedPosition;
                if (bufferedPosition > duration) {
                  bufferedPosition = duration;
                }
                return SeekBar(
                  duration: duration,
                  position: position,
                  bufferedPosition: bufferedPosition,
                  onChangeEnd: (newPosition) {
                    widget._player.seek(newPosition);
                  },
                );
              },
            );
          },
        ),
      ],
    );
  }
}

class PositionData {
  final Duration position;
  final Duration bufferedPosition;

  PositionData(this.position, this.bufferedPosition);
}

class SeekBar extends StatefulWidget {
  final Duration duration;
  final Duration position;
  final Duration bufferedPosition;
  final ValueChanged<Duration>? onChanged;
  final ValueChanged<Duration>? onChangeEnd;

  SeekBar({
    required this.duration,
    required this.position,
    required this.bufferedPosition,
    this.onChanged,
    this.onChangeEnd,
  });

  @override
  _SeekBarState createState() => _SeekBarState();
}

class _SeekBarState extends State<SeekBar> {
  double? _dragValue;
  late SliderThemeData _sliderThemeData;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _sliderThemeData = SliderTheme.of(context).copyWith(
      trackHeight: 5.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SliderTheme(
          data: _sliderThemeData.copyWith(
            activeTrackColor: Colors.grey,
            inactiveTrackColor: Colors.grey.shade300,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
            trackHeight: 1,
          ),
          child: ExcludeSemantics(
            child: Slider(
              min: 0.0,
              max: widget.duration.inMilliseconds.toDouble(),
              value: widget.bufferedPosition.inMilliseconds.toDouble(),
              onChanged: (value) {
                setState(() {
                  _dragValue = value;
                });
                if (widget.onChanged != null) {
                  widget.onChanged!(Duration(milliseconds: value.round()));
                }
              },
              onChangeEnd: (value) {
                if (widget.onChangeEnd != null) {
                  widget.onChangeEnd!(Duration(milliseconds: value.round()));
                }
                _dragValue = null;
              },
            ),
          ),
        ),
        SliderTheme(
          data: _sliderThemeData.copyWith(
            inactiveTrackColor: Colors.grey,
            activeTrackColor: Colors.black,
            thumbColor: Colors.black,
            thumbShape: RoundSliderThumbShape(),
          ),
          child: Slider(
            min: 0.0,
            max: widget.duration.inMilliseconds.toDouble(),
            value: min(_dragValue ?? widget.position.inMilliseconds.toDouble(),
                widget.duration.inMilliseconds.toDouble()),
            onChanged: (value) {
              setState(() {
                _dragValue = value;
              });
              if (widget.onChanged != null) {
                widget.onChanged!(Duration(milliseconds: value.round()));
              }
            },
            onChangeEnd: (value) {
              if (widget.onChangeEnd != null) {
                widget.onChangeEnd!(Duration(milliseconds: value.round()));
              }
              _dragValue = null;
            },
          ),
        ),
      ],
    );
  }
}

class ImageDialog extends StatelessWidget {
  String asset;

  ImageDialog(this.asset);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage(asset),
                fit:
                    BoxFit.fill)), // check CORS if we want to use network image
      ),
    );
  }
}
