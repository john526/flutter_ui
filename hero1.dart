import 'package:flutter/material.dart';

class GreatHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Great Hero"),
        backgroundColor: Colors.yellowAccent,
      ),
      body:Stack(
        children: <Widget>[
          Positioned(
              bottom: 20,
              child: GestureDetector(
                child: Hero(
                  tag: 'Flutter image',
                  child: Image.asset('images/download.jpeg'),
                ),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
          ),

        ],
      ),
    );
  }
}
