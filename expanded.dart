import 'package:flutter/material.dart';


class ExpandedPage extends StatefulWidget {
  final String title;
  ExpandedPage({Key key, this.title}):super(key:key);
  @override
  _ExpandedPageState createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),

      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
              child: Container(
                color: Colors.yellow,
              ),
          ),
          Expanded(
              flex: 5,
              child: Container(
                color: Colors.green,
              ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.orange,
              ),
          ),
        ],
      ),
    );
  }
}
