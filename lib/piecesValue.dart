import 'package:flutter/material.dart';

class PiecesNumber extends StatefulWidget {
  @override
  _PiecesNumberState createState() => _PiecesNumberState();
}

class _PiecesNumberState extends State<PiecesNumber> {
  double _piecesValue = 8;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text('Number of pieces: '),
              Text(
                _piecesValue.round().toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Slider(
            value: _piecesValue,
            min: 4,
            max: 20,
            divisions: 16,
            label: _piecesValue.round().toString() + ' pieces',
            onChanged: (value) {
              setState(() {
                _piecesValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
