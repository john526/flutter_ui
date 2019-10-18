import'package:flutter/material.dart';
import 'hero1.dart';

class HeroPage extends StatefulWidget {
  final String title;
  HeroPage({Key key, this.title}):super(key:key);
  @override
  _HeroPageState createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: GestureDetector(
        child: Container(
          width: 100.0,
          height: 100.0,
          child: Hero(
            tag: 'Flutter image',
            child: Image.asset('images/download.jpeg'),
          ),
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>GreatHero()),);
        },
      ),
    );
  }
}


