import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Track extends ChangeNotifier {
  Duration totalDuration;
  Duration position;
  String audioState;

  Track() {
    initAudio();
  }

  AudioPlayer audioPlayer = AudioPlayer();

  initAudio() {
    audioPlayer.onDurationChanged.listen((updatedDuration) {
      totalDuration = updatedDuration;
      notifyListeners();
    });

    audioPlayer.onAudioPositionChanged.listen((updatedPosition) {
      position = updatedPosition;
      notifyListeners();
    });

    audioPlayer.onPlayerStateChanged.listen((var s) {
      print('Current player state: $s');
      notifyListeners();
    });

    audioPlayer.onPlayerStateChanged.listen((playerState) {
      if (playerState == PlayerState.STOPPED) audioState = "Stopped";
      if (playerState == PlayerState.PLAYING) audioState = "Playing";
      if (playerState == PlayerState.PAUSED) audioState = "Paused";
      notifyListeners();
    });
  }

  playFromUrl() async {
    int result = await audioPlayer.play(
        'https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4');
    if (result == 1) {
      // success
      print('success playing audio from url');
    }
  }

  playFromLocal() async {
    int result =
        await audioPlayer.play('assets/audios/test.wav', isLocal: true);
    if (result == 1) {
      // success
      print('success playing audio from local');
    }
  }

  pauseAudio() {
    audioPlayer.pause();
  }

  stopAudio() {
    audioPlayer.stop();
  }

  seekAudio(Duration durationToSeek) {
    audioPlayer.seek(durationToSeek);
  }
}
