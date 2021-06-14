import 'package:chessradio/model/data.dart';
import 'package:chessradio/model/voice.dart';
import 'package:chessradio/ui/widgets/difficulty_widget.dart';
import 'package:chessradio/ui/widgets/start_button_widget.dart';
import 'package:chessradio/ui/widgets/voice_selector_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/chess_radio_title_widget.dart';
import '../widgets/chess_radio_drawer_widget.dart';

class SelectorScreen extends StatefulWidget {
  @override
  _SelectorScreenState createState() => _SelectorScreenState();
}

class _SelectorScreenState extends State<SelectorScreen> {
  late Voice _selectedVoice;

  @override
  void initState() {
    super.initState();
    _selectedVoice = voices[0];
  }

  void _handleVoiceChanged(Voice newVoice) {
    setState(() {
      _selectedVoice = newVoice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: ChessRadioTitleWidget('Chess Radio', true),
          backgroundColor: Colors.black,
          actions: [
            ChessRadioDrawerWidget(),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              DifficultyWidget(),
              VoiceSelectorWidget(
                voices: voices,
                onChanged: _handleVoiceChanged,
              ),
              StartButtonWidget(_selectedVoice),
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
