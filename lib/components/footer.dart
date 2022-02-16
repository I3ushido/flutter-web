import 'package:flutter/material.dart';
import 'package:flutter_web/responsive.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (!isMobile(context)) ? DesktopFooter() : MobileFooter();
  }
}

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Text(
                'All Right Reserved',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.red,
                ),
              )),
          Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  NavItem(
                    title: 'Linkedin',
                    tapEvent: () {
                      _launchURL();
                    },
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class MobileFooter extends StatelessWidget {
  const MobileFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(
        children: <Widget>[
          Text(
            'All Right Reserved',
            style: TextStyle(fontSize: 10),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: <Widget>[
              NavItem(
                title: 'Linkedin',
                tapEvent: () {
                  _launchURL();
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({Key? key, required this.title, required this.tapEvent})
      : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          title,
          style: TextStyle(color: Colors.red, fontSize: 12),
        ),
      ),
    );
  }
}

const String _url = 'https://www.linkedin.com/in/phisanurat-wongsitha-8288a61a7/';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
