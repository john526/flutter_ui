import'package:flutter/material.dart';


class PlaceholderPage extends StatefulWidget {
  final String title;
  PlaceholderPage({Key key, this.title}):super(key:key);
  @override
  _PlaceholderPageState createState() => _PlaceholderPageState();
}

class _PlaceholderPageState extends State<PlaceholderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Placeholder(
                color: Colors.green,
                fallbackHeight: 100.0,
                fallbackWidth: 100.0,
              ),
              Image.asset('images/a-2729794__340.png', ),
              UnconstrainedBox(
                child: Placeholder(
                  color: Colors.red,
                  fallbackWidth: 100.0,
                  fallbackHeight: 100.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
