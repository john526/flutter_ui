import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  final String title;
  StackPage({Key key, this.title}):super(key:key);
  @override
  _StackPageState createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          // Max Size
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
            height: 300.0,
            width: 300.0,
          ),
          Container(
            color: Colors.pink,
            height: 150.0,
            width: 150.0,
          )
        ],
      ),
    );
  }
}
