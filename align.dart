import 'package:flutter/material.dart';

class AlignPage extends StatefulWidget {
  final String title;
  AlignPage({Key key, this.title}):super(key:key);
  @override
  _AlignPageState createState() => _AlignPageState();
}

class _AlignPageState extends State<AlignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              color: Colors.orange,
              height: 200.0,
              width: 200.0,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text('hello world'),
              ),
            ),
            Container(
              color: Colors.green,
              height: 200.0,
              width: 200.0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text('hello world'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
