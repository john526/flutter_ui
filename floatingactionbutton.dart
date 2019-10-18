import 'package:flutter/material.dart';


class FloatingActionButtonPage extends StatefulWidget {
  final String title;
  FloatingActionButtonPage({Key key, this.title}):super(key:key);
  @override
  _FloatingActionButtonPageState createState() => _FloatingActionButtonPageState();
}

class _FloatingActionButtonPageState extends State<FloatingActionButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              color: Colors.red,
              width: 200.0,
              height: 200.0,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.forward),
        onPressed: (){},
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Container(height: 40.0,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
