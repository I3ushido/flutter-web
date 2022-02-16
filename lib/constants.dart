import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const kPrimaryColor = Color(0XFF88C54D);
const kSecondaryColor = Color(0XFFFFC906);
const kTextColor = Color(0XFF282828);

const String _url =
    'https://www.linkedin.com/in/phisanurat-wongsitha-8288a61a7/';

class Store {
  static void launchURL() async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}
