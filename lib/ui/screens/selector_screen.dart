import 'package:chessradio/ui/widgets/difficulty_widget.dart';
import 'package:chessradio/ui/widgets/start_button_widget.dart';
import 'package:chessradio/ui/widgets/voice_selector_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/chess_radio_title_widget.dart';
import '../widgets/chess_radio_drawer_widget.dart';

final List voices = [
  "Anna Rudolf",
  "Lile Koridze",
  "Hikaru Nakamura",
  "Voyboy",
];

class SelectorScreen extends StatefulWidget {
  @override
  _SelectorScreenState createState() => _SelectorScreenState();
}

class _SelectorScreenState extends State<SelectorScreen> {
  String _voice = "Hikaru Nakamura";
  void _handleVoiceChanged(String newVoice) {
    setState(() {
      _voice = newVoice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: ChessRadioTitleWidget('Chess Radio'),
          backgroundColor: Colors.black,
          actions: [
            ChessRadioDrawerWidget(),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              // PiecesNumberWidget(),
              DifficultyWidget(),
              // CheckMateValueWidget(),
              VoiceSelectorWidget(
                onChanged: _handleVoiceChanged,
              ),
              StartButtonWidget(_voice),
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
