import 'package:flutter/material.dart';
import 'package:simple_cookies/simple_cookies.dart';

class CookiesConsent extends CookieBanner {
  CookiesConsent() : super(Cookies.acceptedCookiesId);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(5),
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.blue, width: 2)),
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Text(
                  'We are using cookies! Lorem Ipsum, feliz navidad!',
                  style: TextStyle(color: Colors.white),
                )),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: RaisedButton(
                      color: Colors.green,
                      onPressed: () => acceptCookies(context),
                      child: Text(
                        'Delicious!',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
