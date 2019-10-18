import'package:flutter/material.dart';


class FittedBoxPage extends StatefulWidget {
  final String title;
  FittedBoxPage({Key key, this.title}):super(key:key);
  @override
  _FittedBoxPageState createState() => _FittedBoxPageState();
}

class _FittedBoxPageState extends State<FittedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),

      body: ListView(
        children: <Widget>[
          FittedBox(
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.asset('images/download.jpeg'),
                ),
                Container(
                  child: Text("FLUTTER"),
                )
              ],
            ),
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
