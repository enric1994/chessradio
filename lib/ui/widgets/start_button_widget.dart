import 'package:flutter/material.dart';

import '../screens/playlist_screen.dart';

class StartButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      child: Hero(
        tag: 'playlist',
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PlayListScreen('test data'),
              ),
            );
          },
          child: Text(
            "Start",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
