import 'package:flutter/material.dart';


class WrapPage extends StatefulWidget {
  final String title;
  WrapPage({Key key, this.title}):super(key:key);
  @override
  _WrapPageState createState() => _WrapPageState();
}

class _WrapPageState extends State<WrapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),

      body: Center(
        child: Container(
          child: Wrap(
            children: <Widget>[
              container(40.0,40.0,Colors.orange),
              container(40.0,40.0,Colors.purple),
              container(40.0,40.0,Colors.orange),
              container(40.0,40.0,Colors.red),
              container(40.0,40.0,Colors.orange),
              container(40.0,40.0,Colors.white70),
              container(40.0,40.0,Colors.blueGrey),
              container(40.0,40.0,Colors.green),
              container(40.0,40.0,Colors.yellow),
              container(40.0,40.0,Colors.green),
              container(40.0,40.0,Colors.pink),
            ],
          ),
        ),
      ),
    );
  }
}


Container container (double width, double height, Color color){
  return Container(
    width: width,
    height: height,
    color: color,
  );
}