import 'package:flutter/material.dart';

class OpacityPage extends StatefulWidget {
  final String title;
  OpacityPage({Key key, this.title}):super(key:key);
  @override
  _OpacityPageState createState() => _OpacityPageState();
}

class _OpacityPageState extends State<OpacityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),

      body: Center(
        child: Container(
          color: Colors.blue.withOpacity(0.4),
          height: 200.0,
          width: 200.0,
        ),
      ),
    );
  }
}
