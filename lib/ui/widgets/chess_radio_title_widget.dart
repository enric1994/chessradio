import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ChessRadioTitleWidget extends StatelessWidget {
  String titleText;
  bool logo;
  var textFont;

  ChessRadioTitleWidget(this.titleText, this.logo);

  @override
  Widget build(BuildContext context) {
    if (logo) {
      textFont = GoogleFonts.dancingScript();
    } else {
      textFont = GoogleFonts.montserrat(
        fontWeight: FontWeight.w200,
      );
    }
    return Container(
      child: Center(
        child: RichText(
          text: TextSpan(
            style: textFont,
            children: <TextSpan>[
              TextSpan(
                text: titleText,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
