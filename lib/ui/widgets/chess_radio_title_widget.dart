import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ChessRadioTitleWidget extends StatelessWidget {
  String titleText;

  ChessRadioTitleWidget(this.titleText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RichText(
          text: TextSpan(
            style: GoogleFonts.dancingScript(),
            children: <TextSpan>[
              TextSpan(
                text: titleText,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
