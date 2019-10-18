import 'package:flutter/material.dart';

class SafeAreaPage extends StatefulWidget {
  final String title;
  SafeAreaPage({Key key, this.title}):super(key:key);
  @override
  _SafeAreaPageState createState() => _SafeAreaPageState();
}

class _SafeAreaPageState extends State<SafeAreaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),

      body: Center(
        child: Container(
          child: SafeArea(
            left: false,
              right: true,
              child: ListView(
                children:List.generate(
                  100, (i)=>Text('hello world'),
                ),
              ),
          ),
        ),
      ),
    );
  }
}
