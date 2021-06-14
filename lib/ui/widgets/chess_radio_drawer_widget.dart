import 'package:chessradio/ui/screens/about_screen.dart';
import 'package:chessradio/ui/screens/feedback_screen.dart';
import 'package:flutter/material.dart';

class ChessRadioDrawerWidget extends StatefulWidget {
  @override
  _ChessRadioDrawerWidgetState createState() => _ChessRadioDrawerWidgetState();
}

class _ChessRadioDrawerWidgetState extends State<ChessRadioDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PopupMenuButton<ElevatedButton>(itemBuilder: (context) {
        return [
          PopupMenuItem(
            child: ElevatedButton(
              child: Text(
                'About',
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AboutScreen(),
                  ),
                );
              },
            ),
          ),
          PopupMenuItem(
            child: ElevatedButton(
              child: Text(
                'Feedback',
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FeedbackScreen(),
                  ),
                );
              },
            ),
          ),
        ];
      }),
    );
  }
}

// onPressed: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (context) => SelectorScreen(),
//                   ),
//                 );
//               },
