import 'package:flutter/material.dart';

class PiecesNumberWidget extends StatefulWidget {
  @override
  _PiecesNumberWidgetState createState() => _PiecesNumberWidgetState();
}

class _PiecesNumberWidgetState extends State<PiecesNumberWidget> {
  double _piecesValue = 8;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: 200,
        child: Column(
          children: [
            Center(
              child: Row(
                children: [
                  // Spaces to center text
                  Text('         Number of pieces: '),
                  Text(
                    _piecesValue.round().toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Slider(
              value: _piecesValue,
              min: 4,
              max: 20,
              divisions: 16,
              // label: _piecesValue.round().toString() + ' pieces',
              activeColor: Colors.black,
              inactiveColor: Colors.grey[400],
              onChanged: (value) {
                setState(() {
                  _piecesValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
