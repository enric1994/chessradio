import 'package:chessradio/model/puzzle.dart';
import 'package:chessradio/model/voice.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/playlist_screen.dart';

class StartButtonWidget extends StatelessWidget {
  late List<Puzzle> _puzzles;

  StartButtonWidget(Voice voice) {
    _puzzles = voice.tracks;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PlayListScreen(_puzzles),
            ),
          );
        },
        child: Text(
          "Start",
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
