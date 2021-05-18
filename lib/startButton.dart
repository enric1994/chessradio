import 'package:flutter/material.dart';

import './playlist.dart';

class StartButton extends StatelessWidget {
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
                builder: (context) => PlayListPage('test data'),
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
