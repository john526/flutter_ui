import 'package:flutter/material.dart';

class AbsorbPointerPage extends StatefulWidget {
  final String title;
  AbsorbPointerPage( {Key key, this.title}):super(key:key);
  @override
  _AbsorbPointerPageState createState() => _AbsorbPointerPageState();
}

class _AbsorbPointerPageState extends State<AbsorbPointerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: AbsorbPointer(
        absorbing:true ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              color: Colors.red,
                child: Text('click'),
                onPressed: (){},
            ),
            RaisedButton(
              color: Colors.green,
              child: Text('click'),
              onPressed: (){},
            ),
            RaisedButton(
              color: Colors.yellow,
              child: Text('click'),
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}
