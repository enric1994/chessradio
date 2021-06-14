import 'package:chessradio/ui/screens/selector_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/chess_radio_title_widget.dart';
import '../widgets/chess_radio_drawer_widget.dart';

class FeedbackScreen extends StatefulWidget {
  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: ChessRadioTitleWidget('Feedback', false),
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
            '''Thanks for beta testing our app! 

Found a bug? Comments? The puzzles are too hard? Drop us an email at hi@chessrad.io
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
