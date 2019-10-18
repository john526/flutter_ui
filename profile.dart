import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  double heightFactor = 0.67;


  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size ;
    debugPrint(MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 1-heightFactor,
            child: Image.asset(
              'images/gothic-1770548__340.jpg',
              fit: BoxFit.cover,
              color: Colors.black,
              colorBlendMode: BlendMode.hue,
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.05+heightFactor,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              ),
              child:Column(
                children: <Widget>[
                  Container(
                    height: 200.0,
                    width: 300.0,
                    child: Card(
                      elevation: 20,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 32.0, right: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.twitter),
                                Icon(FontAwesomeIcons.github),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 32.0, right: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.instagram),
                                Icon(FontAwesomeIcons.facebook),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ) ,
            ),
          ),
        ],
      ),
    );
  }
}
