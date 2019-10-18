import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AniamtedOpacityPage extends StatefulWidget {
  final String title;
  AniamtedOpacityPage({Key key, this.title}):super(key:key);
  @override
  _AniamtedOpacityPageState createState() => _AniamtedOpacityPageState();
}

class _AniamtedOpacityPageState extends State<AniamtedOpacityPage> {
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: AnimatedOpacity(
                opacity: visible ? 1 : 0.1,
                duration: Duration(seconds: 8),
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.deepPurple,
                  child: AnimatedOpacity(
                      opacity: visible ? 0.9 : 0.2,
                      duration: Duration(seconds: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(30.0)),
                        Card(
                          color: Colors.red,
                          elevation: 10.0,
                          child: Text('Animated Opacity'),
                        ),
                        Padding(padding: EdgeInsets.all(20.0)),
                        AnimatedOpacity(
                            opacity: visible ? 0.8 : 0.3,
                            duration: Duration(seconds: 9),
                            child: Card(
                              color: Colors.red,
                              elevation: 10.0,
                              child: Container(
                                color: Colors.green,
                                height: 50.0,
                                width: 50.0,
                              ),
                            ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            FloatingActionButton(
                child: Icon(Icons.cached),
                backgroundColor: Colors.grey,
                onPressed: (){
                  setState(() {

                    visible = ! visible;
                  });
                },
                ),
          ],
        ),
      ),
    );
  }
}
