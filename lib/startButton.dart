import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
        ),
        onPressed: () {},
        child: Text(
          "Start",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
