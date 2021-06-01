import 'package:flutter/material.dart';

class ChessRadioDrawerWidget extends StatefulWidget {
  @override
  _ChessRadioDrawerWidgetState createState() => _ChessRadioDrawerWidgetState();
}

class _ChessRadioDrawerWidgetState extends State<ChessRadioDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          AppBar(
            backgroundColor: Colors.grey,
            toolbarHeight: 80,
            title: Text('Chess Radio v1'),
          ),
          Text('Contact'),
          Text('Feedback'),
          Text('About'),
          Text('Donate')
        ],
      ),
    );
  }
}
