import 'package:flutter/material.dart';


class PositionedPage extends StatefulWidget {
  final String title;
  PositionedPage({Key key, this.title}):super(key:key);
  @override
  _PositionedPageState createState() => _PositionedPageState();
}

class _PositionedPageState extends State<PositionedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      body: Stack(
        children: <Widget>[
          Positioned(
              right: 10.0,
              width: 200.0,
              height: 200.0,
              child: Container(
                color: Colors.red,
              ),
          ),
          Positioned(
            left: 10.0,
            width: 100.0,
            height: 100.0,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Positioned(
            bottom: 10.0,
            right: 20.0,
            width: 200.0,
            height: 200.0,
            child: Image.asset('images/download.jpeg'),
          ),
          Positioned(
            bottom: 20.0,
            width: 100.0,
            height: 100.0,
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
