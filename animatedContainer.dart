import 'package:flutter/material.dart';
import 'dart:math';


class AnimatedContainerPage extends StatefulWidget {
  final String title;
  AnimatedContainerPage({Key key, this.title}):super(key:key);
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _widthCon = 200.0;
  double _heightCon = 200.0;
  Color _color = Colors.orange;
  BorderRadiusGeometry _borderRadiusCon = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),

      body: GestureDetector(
        onTap: (){
          setState(() {
            final randomCo = Random();

            _heightCon = randomCo.nextInt(600).toDouble();
            _widthCon = randomCo.nextInt(600).toDouble();
            _color = Color.fromRGBO(randomCo.nextInt(255), randomCo.nextInt(255), randomCo.nextInt(255), 1);
            _borderRadiusCon = BorderRadius.circular(randomCo.nextInt(100).toDouble());
          });
        },
        child: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            decoration: BoxDecoration(
              color:_color ,
              borderRadius: _borderRadiusCon,
            ),
            curve: Curves.fastLinearToSlowEaseIn,
            height: _heightCon,
            width: _widthCon,
          ),
        ),
      ),
    );
  }
}
