import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ChessRadioTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RichText(
          text: TextSpan(
            style: GoogleFonts.dancingScript(),
            children: <TextSpan>[
              TextSpan(
                text: 'Chess',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              TextSpan(
                // Add spaces to centre text
                text: ' Radio     ',
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
