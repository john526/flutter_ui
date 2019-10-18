import 'package:flutter/material.dart';
class AspectPage extends StatefulWidget {
  final String title;
  AspectPage({Key key,this.title}):super(key:key);
  @override
  _AspectPageState createState() => _AspectPageState();
}

class _AspectPageState extends State<AspectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.redAccent,
                child: AspectRatio(
                  aspectRatio: 2/3,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text('widget'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: AspectRatio(
                    aspectRatio: 3/2,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('widget'),
                    ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.orange,
                child: AspectRatio(
                  aspectRatio: 1/2,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text('widgets'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
