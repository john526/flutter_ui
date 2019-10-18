import 'package:flutter/material.dart';

class SpacerPage extends StatefulWidget {
  final String title;
  SpacerPage({Key key, this.title}):super(key:key);
  @override
  _SpacerPageState createState() => _SpacerPageState();
}

class _SpacerPageState extends State<SpacerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Card(
              child: Container(
                height: 200,
                width: 900,
                decoration: BoxDecoration(color: Colors.blue),
                child: Center(child:Text("Sample Widget 1")),
              ),
            ),
            Spacer(),
            Card(
              child: Container(
                height: 200,
                width: 900,
                decoration: BoxDecoration(color: Colors.red),
                child: Center(child:Text("Sample Widget 2")),
              ),
            ),
            Spacer(flex: 2,),
            Card(
              child: Container(
                height: 150,
                width: 900,
                decoration: BoxDecoration(color: Colors.orange),
                child: Center(child:Text("Sample Widget 3")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
