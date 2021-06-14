import 'package:chessradio/ui/screens/selector_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/chess_radio_title_widget.dart';
import '../widgets/chess_radio_drawer_widget.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: ChessRadioTitleWidget('About', false),
          backgroundColor: Colors.black,
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
          actions: [
            ChessRadioDrawerWidget(),
          ],
        ),
        body: Container(
          child: (Text(
            '''Chess Radio is an open-source project to practice chess visualization (a.k.a. Blindfold chess). This forces players to maintain a mental model of the positions of the pieces.

It is developed by Oriol Bernal and Enric Moreu as a side project using Flutter. The app is available for Android, iOS, web, and desktop app. The code is available on Github and everyone can contribute.

Chess Radio is FREE and will always be FREE.

More information at www.chessrad.io
 ''',
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          )),
          margin: const EdgeInsets.all(50),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
