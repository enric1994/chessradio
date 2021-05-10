import 'package:flutter/material.dart';

void main() {
  runApp(ChessRadio());
}

class ChessRadio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chess Radio'),
          backgroundColor: const Color(0xfff4dd29),
        ),
        body: Column(
          children: [
            FloatingActionButton(
                child: const Icon(Icons.play_arrow), onPressed: null),
          ],
        ),
      ),
    );
  }
}
