import 'package:flutter/material.dart';
import 'dart:ui';
class BackDropContainer extends StatefulWidget {
  final String title;
  BackDropContainer({Key key, this.title}):super(key:key);
  @override
  _BackDropContainerState createState() => _BackDropContainerState();
}

class _BackDropContainerState extends State<BackDropContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BackDrop Filter'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),

      body: Stack(
        children: <Widget>[
          ConstrainedBox(
              child: Image.network('https://images.pexels.com/photos/248797/pexels-photo-248797.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
              constraints: BoxConstraints.expand(),
          ),
          Container(
            child: BackdropFilter(
              filter:ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100.withOpacity(0.2),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
