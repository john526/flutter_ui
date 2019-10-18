import 'package:exercise/constrainedBox.dart';
import 'package:flutter/material.dart';

class LimitedPage extends StatefulWidget {
  final String title;
  LimitedPage({Key key, this.title}):super(key:key);
  @override
  _LimitedPageState createState() => _LimitedPageState();
}

class _LimitedPageState extends State<LimitedPage> {
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
            LimitedBox(
              maxHeight: 50.0,
              maxWidth: 50.0,
              child: Container(
                color: Colors.teal,
                height: 500.0,
                width: 50.0,
              ),
            ),

            LimitedBox(
              maxHeight: 500.0,
              maxWidth: 500.0,
              child: Container(
                color: Colors.orange,
                height: 200.0,
                width: 200.0,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
