import 'package:flutter/material.dart';

class DifficultyWidget extends StatefulWidget {
  @override
  _DifficultyWidgetState createState() => _DifficultyWidgetState();
}

class _DifficultyWidgetState extends State<DifficultyWidget> {
  double _difficultyValue = 1200;
  String _difficulty = 'Intermediate';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Center(
        child: SizedBox(
          width: 200,
          child: Column(
            children: [
              Text(
                _difficulty,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(_difficultyValue.round().toString()),
              // style: TextStyle(fontWeight: FontWeight.bold)),
              Slider(
                value: _difficultyValue,
                min: 800,
                max: 2600,
                divisions: null,
                // label: 'M' + _checkMateValue.round().toString(),
                activeColor: Colors.black,
                inactiveColor: Colors.grey[400],
                onChanged: (value) {
                  setState(() {
                    _difficultyValue = value;
                    if (value >= 800 && value < 1000) {
                      _difficulty = 'Beginner';
                    } else if (value >= 1000 && value < 1600) {
                      _difficulty = 'Intermediate';
                    } else if (value >= 1600 && value < 2000) {
                      _difficulty = 'Advanced';
                    } else if (value >= 2000 && value < 2400) {
                      _difficulty = 'Expert';
                    } else if (value >= 2400 && value < 2600) {
                      _difficulty = 'Master';
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
