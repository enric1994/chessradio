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
    return Container(
      child: Column(
        children: [
          Text('Select voice: '),
          Container(
            child: Column(
              children: [
                Text(
                  _currentVoice.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
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
                      .map(
                        (item) => Container(
                          margin: const EdgeInsets.all(5.0),
                          // padding: const EdgeInsets.all(0.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                              color: Colors.black,
                              width: 5.0,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image(
                              image: AssetImage(item),
                              height: 150,
                              alignment: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
            margin: const EdgeInsets.all(20.0),
            // padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
            width: 300,
          ),
        ],
      ),
    );
  }
}
