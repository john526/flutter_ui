import 'package:flutter/material.dart';

class SliverAppBarApp extends StatefulWidget {
  final String title;
  SliverAppBarApp({Key key, this.title}):super(key:key);
  @override
  _SliverAppBarAppState createState() => _SliverAppBarAppState();
}

class _SliverAppBarAppState extends State<SliverAppBarApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                title: Text(widget.title),
                leading: Icon(Icons.threed_rotation),
                backgroundColor: Colors.deepPurple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
