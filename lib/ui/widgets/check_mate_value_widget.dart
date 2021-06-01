import 'package:flutter/material.dart';

class CheckMateValueWidget extends StatefulWidget {
  @override
  _CheckMateValueWidgetState createState() => _CheckMateValueWidgetState();
}

class _CheckMateValueWidgetState extends State<CheckMateValueWidget> {
  double _checkMateValue = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: 200,
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Text('                    Mate in: '),
                  Text(_checkMateValue.round().toString(),
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              Slider(
                value: _checkMateValue,
                min: 1,
                max: 4,
                divisions: 3,
                // label: 'M' + _checkMateValue.round().toString(),
                activeColor: Colors.black,
                inactiveColor: Colors.grey[400],
                onChanged: (value) {
                  setState(() {
                    _checkMateValue = value;
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
