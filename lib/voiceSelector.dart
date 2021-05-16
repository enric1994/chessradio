import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'images/Hikaru.png',
  'images/CodeMiko.png',
  'images/Cramling.png',
  'images/GothamChess.png',
  'images/Kosteniuk.png',
  'images/Vishy.png',
];

class VoiceSelector extends StatefulWidget {
  @override
  _VoiceSelectorState createState() => _VoiceSelectorState();
}

class _VoiceSelectorState extends State<VoiceSelector> {
  var _currentVoice = 'Hikaru';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: [
          Row(
            children: [
              Text('Voice: '),
              Text(
                _currentVoice.toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          CarouselSlider(
            options: CarouselOptions(
                enlargeCenterPage: true,
                viewportFraction: 0.5,
                onPageChanged: (index, reason) {
                  setState(() {
                    var str = imgList[index].split('/')[1];
                    if (str != null && str.length >= 4) {
                      str = str.substring(0, str.length - 4);
                    }
                    _currentVoice = str;
                  });
                }),
            items: imgList
                .map((item) => Container(
                      child: Center(child: Image(image: AssetImage(item))),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
