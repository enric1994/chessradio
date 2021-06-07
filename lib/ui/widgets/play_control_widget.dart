import 'package:chessradio/model/track.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class PlayControlWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Track>(
      builder: (_, myAudioModel, child) => GestureDetector(
        onTap: () {
          myAudioModel.audioState == "Playing"
              ? myAudioModel.pauseAudio()
              : myAudioModel.playFromLocal();
        },
        child: Icon(
          myAudioModel.audioState == "Playing" ? Icons.pause : Icons.play_arrow,
          size: 50,
        ),
      ),
    );
  }
}