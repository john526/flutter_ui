import 'package:flutter/material.dart';


class SizedboxPage extends StatefulWidget {
  final String title;
  SizedboxPage({Key key, this.title}):super(key:key);
  @override
  _SizedboxPageState createState() => _SizedboxPageState();
}

class _SizedboxPageState extends State<SizedboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),

      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: RaisedButton(
                  child: Text('click'),
                  color: Colors.blue,
                  onPressed: (){},
                ),
              ),
              SizedBox(
                width: 30.0,
                height: 100.0,
                child: RaisedButton(
                  child: Text('click'),
                  color: Colors.red,
                  onPressed: (){},
                ),
              ),

              SizedBox(
                width: 190.0,
                height: 150.0,
                child: RaisedButton(
                  child: Text('click'),
                  color: Colors.amber,
                  onPressed: (){},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
