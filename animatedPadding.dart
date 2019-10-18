import'package:flutter/material.dart';

class AnimatedPaddingPage extends StatefulWidget {
  final String title;
  AnimatedPaddingPage({Key key , this.title}):super(key:key);
  @override
  _AnimatedPaddingPageState createState() => _AnimatedPaddingPageState();
}

class _AnimatedPaddingPageState extends State<AnimatedPaddingPage> {
  double padValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child: AnimatedPadding(
                  padding: EdgeInsets.all(padValue),
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut,
                  child: Container(
                    color: Colors.green,
                  ),
              ),
          ),
          Text('Padding actual value : $padValue'),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  color: Colors.green,
                  child: Text("Add padding"),
                  onPressed: (){
                    setState(() {
                      padValue = padValue + 10;
                    });
                  }
              ),
              RaisedButton(
                  color: Colors.red,
                  child: Text("Sub padding"),
                  onPressed: (){
                    setState(() {
                      if(padValue != 0)
                         padValue = padValue - 10;
                    });
                  }
              ),
            ],
          ),
        ],
      ),
    );
  }
}
