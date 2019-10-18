import 'package:flutter/material.dart';


class IndexStackPage extends StatefulWidget {
  final String title;
  IndexStackPage({Key key, this.title}):super(key : key);
  @override
  _IndexStackPageState createState() => _IndexStackPageState();
}

class _IndexStackPageState extends State<IndexStackPage> {
  int index = 0;
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
            IndexedStack(
              index: index,
              children: <Widget>[
                Center(
                  child: Container(
                    color: Colors.red,
                    width: 300.0,
                    height: 250.0,
                  ),
                ),
                Center(
                  child: Container(
                    color: Colors.orange,
                    width: 150.0,
                    height: 250.0,
                  ),
                ),
                Center(
                  child: Container(
                    color: Colors.green,
                    width: 90.0,
                    height: 200.0,
                  ),
                ),
              ],
            ),
            //***********************************
            IndexedStack(
              index: index,
              children: <Widget>[
                Center(
                  child: Container(
                    color: Colors.red,
                    width: 20.0,
                    height: 280.0,
                  ),
                ),
                Center(
                  child: Container(
                    color: Colors.orange,
                    width: 200.0,
                    height: 200.0,
                  ),
                ),
                Center(
                  child: Container(
                    color: Colors.green,
                    width: 50.0,
                    height: 200.0,
                  ),
                ),
              ],
            ),
            FlatButton(
                onPressed: (){
                  if(index==2){
                    setState(() {
                      index =0;
                    });
                  }
                  else{
                    setState(() {
                      index ++;
                    });
                  }
                },
                child: Text('change color'),
            ),
          ],
        ),
      ),
    );
  }
}
