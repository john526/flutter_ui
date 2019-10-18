import 'package:flutter/material.dart';


class PageViewPage extends StatefulWidget {
  final String title;
  PageViewPage({Key key, this.title}):super(key:key);
  @override
  _PageViewPageState createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),

      body: Center(
        child: Container(
          child: PageView(
            children: <Widget>[
              Container(
                color: Colors.orange,
                child: Text("FLUTTER", style: TextStyle(color: Colors.white, fontSize: 40), textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.yellow,
                child: Text("DART", style: TextStyle(color: Colors.white, fontSize: 40), textAlign: TextAlign.center,),
              ),
              Container(
                color: Colors.red,
                child: Text("C++", style: TextStyle(color: Colors.white, fontSize: 40), textAlign: TextAlign.center,),
              ),
            ],
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
