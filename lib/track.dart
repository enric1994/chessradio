import 'package:flutter/material.dart';

class Track extends StatefulWidget {
  @override
  _TrackState createState() => _TrackState();
}

class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: Row(
              children: [
                Icon(
                  Icons.play_arrow,
                  size: 50,
                ),
                Container(
                  child: null,
                  width: 200,
                  height: 80,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                  ),
                ),
              ],
            ),
            width: 300,
            height: 100,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 4,
              ),
            ),
          ),
          Container(
            width: 70.0,
            decoration: BoxDecoration(),
            child: Image(
              image: AssetImage('./images/solution.png'),
              height: 70,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}
