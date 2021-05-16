import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Start",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
