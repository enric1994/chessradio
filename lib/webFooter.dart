import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'cookiesConsent.dart';

class WebFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Footer(
        child: Column(
          children: [
            //this takes the Footer Component which has 4 arguments with one being mandatory ie the child
            Text('ChessRadio 2021'),
            CookiesConsent(),
          ],
        ),
        // ,
        backgroundColor: Colors.grey
            .shade200, // defines the background Colors of the Footer with default Colors.grey.shade200
        // padding: 5.0, // Take a double with default being 5.0
        alignment: Alignment
            .bottomCenter, //This take a Cusstomisable Widget eg Container, Column e.t.c
      ),
    );
  }
}
