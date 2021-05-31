import 'package:chessradio/model/track.dart';
import 'package:chessradio/ui/widgets/play_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class PuzzleWidget extends StatefulWidget {
  @override
  _PuzzleWidgetState createState() => _PuzzleWidgetState();
}

class _PuzzleWidgetState extends State<PuzzleWidget> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) => Track(), child: ItemWidget());
  }
}

class ItemWidget extends StatelessWidget {
  ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: Row(
              children: [
                PlayControl(),
                BarraWidget(),
              ],
            ),
            width: 250,
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

class BarraWidget extends StatelessWidget {
  BarraWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 80,
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          SliderTheme(
            data: SliderThemeData(
                trackHeight: 5,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5)),
            child: Consumer<Track>(
              builder: (_, track, child) => Slider(
                value: track.position == null
                    ? 0
                    : track.position.inMilliseconds.toDouble(),
                activeColor: Colors.red,
                inactiveColor: Colors.blue.withOpacity(0.3),
                onChanged: (value) {
                  track.seekAudio(Duration(milliseconds: value.toInt()));
                },
                min: 0,
                max: track.totalDuration == null
                    ? 20
                    : track.totalDuration.inMilliseconds.toDouble(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
