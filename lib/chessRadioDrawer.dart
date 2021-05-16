import 'package:flutter/material.dart';

class ChessRadioDrawer extends StatefulWidget {
  @override
  _ChessRadioDrawerState createState() => _ChessRadioDrawerState();
}

class _ChessRadioDrawerState extends State<ChessRadioDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Contact'),
          Text('Feedback'),
          Text('About'),
          Text('Donate')
        ],
      ),
    );
  }
}
