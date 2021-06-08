import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/images/Hikaru Nakamura.jpeg',
  'assets/images/Anna Rudolf.jpeg',
  'assets/images/Lile Koridze.jpeg',
  'assets/images/Voyboy.jpeg',
];

class VoiceSelectorWidget extends StatefulWidget {
  VoiceSelectorWidget({Key? key, required this.onChanged}) : super(key: key);

  final ValueChanged<String> onChanged;

  @override
  _VoiceSelectorWidgetState createState() => _VoiceSelectorWidgetState();
}

class _VoiceSelectorWidgetState extends State<VoiceSelectorWidget> {
  String _currentVoice = 'Hikaru Nakamura';

  void changeVoice(String newVoice) {
    setState(() {
      _currentVoice = newVoice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Select speaker: ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Container(
            child: Column(
              children: [
                SizedBox(height: 5),
                Text(
                  _currentVoice.toString(),
                  // style: TextStyle(fontWeight: FontWeight.bold),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                      enlargeCenterPage: true,
                      viewportFraction: 0.6,
                      onPageChanged: (index, reason) {
                        var str = imgList[index].split('/')[2];
                        if (str.length >= 4) {
                          str = str.substring(0, str.length - 5);
                        }
                        setState(() {
                          _currentVoice = str;
                        });
                        widget.onChanged(_currentVoice);
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
            margin: const EdgeInsets.all(15.0),
            // padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
            width: 500,
          ),
        ],
      ),
    );
  }
}
