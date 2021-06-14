import 'package:chessradio/ui/screens/selector_screen.dart';
import 'package:flutter/material.dart';

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
        body: Center(
          child: Column(
            children: [
              Text('Hi!'),
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
