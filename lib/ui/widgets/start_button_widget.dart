import 'package:flutter/material.dart';

import '../screens/playlist_screen.dart';

class StartButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PlayListScreen(),
            ),
          );
        },
        child: Text(
          "Start",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
