import 'package:flutter/material.dart';

class DimissiblePage extends StatefulWidget {
  final String title;
  DimissiblePage({Key key, this.title}):super(key:key);
  @override
  _DimissiblePageState createState() => _DimissiblePageState();
}

class _DimissiblePageState extends State<DimissiblePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Dismissible(
            onDismissed: (d){
              Navigator.of(context).pop();
            },
              key: Key('green'),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.green,
              ),
          ),
          Dismissible(
              key: Key('white'),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
              ),
          ),
          Dismissible(
              key: Key('orange'),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.orange,
              ),
          ),
        ],
      ),
    );
  }
}
