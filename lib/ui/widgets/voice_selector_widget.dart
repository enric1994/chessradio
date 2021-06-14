import 'package:chessradio/model/voice.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class VoiceSelectorWidget extends StatefulWidget {
  final List<Voice> voices;
  final ValueChanged<Voice> onChanged;

  VoiceSelectorWidget({Key? key, required this.voices, required this.onChanged})
      : super(key: key);

  @override
  _VoiceSelectorWidgetState createState() => _VoiceSelectorWidgetState();
}

class _VoiceSelectorWidgetState extends State<VoiceSelectorWidget> {
  late Voice _currentVoice;

  @override
  void initState() {
    super.initState();
    _currentVoice = widget.voices[0];
  }

  void changeVoice(Voice newVoice) {
    setState(() {
      _currentVoice = newVoice;
    });
    widget.onChanged(_currentVoice);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Select speaker: ',
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
          Container(
            child: Column(
              children: [
                SizedBox(height: 5),
                Text(
                  _currentVoice.name,
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                      enlargeCenterPage: true,
                      viewportFraction: 0.6,
                      onPageChanged: (index, reason) {
                        changeVoice(widget.voices[index]);
                      }),
                  items: widget.voices
                      .map((voice) => voice.image)
                      .toList()
                      .map(
                        (item) => Container(
                          margin: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                              color: Colors.black,
                              width: 3,
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                color: Colors.black,
                width: 1.0,
              ),
            ),
            width: 500,
          ),
        ],
      ),
    );
  }
}
