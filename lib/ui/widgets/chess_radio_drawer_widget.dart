import 'package:flutter/material.dart';

class ChessRadioDrawerWidget extends StatefulWidget {
  @override
  _ChessRadioDrawerWidgetState createState() => _ChessRadioDrawerWidgetState();
}

class _ChessRadioDrawerWidgetState extends State<ChessRadioDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PopupMenuButton<Text>(itemBuilder: (context) {
        return [
          PopupMenuItem(
            child: Text(
              'About',
            ),
          ),
          PopupMenuItem(
            child: Text(
              'Feedback',
            ),
          ),
          PopupMenuItem(
            child: Text(
              'Contact',
            ),
          ),
        ];
      }),
    );
  }
}
