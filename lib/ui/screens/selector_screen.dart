import 'package:chessradio/ui/widgets/check_mate_value_widget.dart';
import 'package:chessradio/ui/widgets/pieces_number_widget.dart';
import 'package:chessradio/ui/widgets/start_button_widget.dart';
import 'package:chessradio/ui/widgets/voice_selector_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/chess_radio_title_widget.dart';
import '../widgets/chess_radio_drawer_widget.dart';

class SelectorScreen extends StatelessWidget {
  SelectorScreen();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: ChessRadioTitleWidget(),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            children: [
              PiecesNumberWidget(),
              CheckMateValueWidget(),
              VoiceSelectorWidget(),
              StartButtonWidget(),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: ChessRadioDrawerWidget(),
        ),
      ),
    );
  }
}
