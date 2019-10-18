import 'package:flutter/material.dart';

class ToolTipPage extends StatefulWidget {
  final String title;
  ToolTipPage({Key key, this.title}):super(key:key);
  @override
  _ToolTipPageState createState() => _ToolTipPageState();
}

class _ToolTipPageState extends State<ToolTipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                color: Colors.teal,
                width: 200.0,
                height: 200.0,
                child: Tooltip(
                  message: 'ACCOUNT CIRCLE',
                  verticalOffset: 40,
                  height: 20.0,
                  child: IconButton(
                    icon:Icon(Icons.account_circle, size: 100,),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
