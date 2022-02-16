import 'package:flutter/material.dart';
import 'package:flutter_web/components/main_button.dart';
import 'package:flutter_web/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class Jumbotron extends StatelessWidget {
  const Jumbotron({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 0),
              child: Column(
                mainAxisAlignment: !isMobile(context)
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.center,
                crossAxisAlignment: !isMobile(context)
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: <Widget>[
                  if (isMobile(context))
                    Image.asset(
                      'assets/images/main.png',
                      height: size.height * 0.3,
                    ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Hello ',
                        style: TextStyle(
                            fontSize: isDesktop(context) ? 64 : 20,
                            fontWeight: FontWeight.w800,
                            color: kTextColor)),
                    TextSpan(
                        text: 'everyone!',
                        style: TextStyle(
                            fontSize: isDesktop(context) ? 64 : 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.red)),
                  ])),
                  Text(
                    'My name is Phisanurat',
                    style: TextStyle(
                        fontSize: isDesktop(context) ? 32 : 18,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    'I\'m a "Software Engineer"',
                    style: TextStyle(
                        fontSize: isDesktop(context) ? 32 : 18,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'I\'m a mobile developer (React Native) and I can write React.js as well.',
                    textAlign:
                        isMobile(context) ? TextAlign.center : TextAlign.start,
                    // style: TextStyle(
                    //     fontSize: isDesktop(context) ? 36 : 18,
                    //     fontWeight: FontWeight.w300),
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          color: Colors.red,
                          letterSpacing: .5,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  Wrap(
                    runSpacing: 10,
                    children: <Widget>[
                      // MainButton(
                      //   title: 'GET STARTED',
                      //   color: Colors.red,
                      //   tapEvent: () {},
                      // ),
                      SizedBox(width: 10),
                    ],
                  )
                ],
              ),
            )),
            if (isDesktop(context) || isTab(context))
              Expanded(
                  child: Image.asset(
                'assets/images/main.png',
                height: size.height * 0.7,
              ))
          ],
        ));
  }
}
