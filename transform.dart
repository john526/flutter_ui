import 'dart:math';

import 'package:flutter/material.dart';


class TransformPage extends StatefulWidget {
  final String title;
  TransformPage({Key key , this.title}):super(key:key);
  @override
  _TransformPageState createState() => _TransformPageState();
}

class _TransformPageState extends State<TransformPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),

      body: Center(
        child: Transform.rotate(
            angle: pi/4,
            child: Container(
              color: Colors.orangeAccent,
              width: 200.0,
              height: 200.0,
            )
        ),
      ),
    );
  }
}
