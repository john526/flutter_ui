import 'package:flutter/material.dart';

class AnimatedPositionedPage extends StatefulWidget {
  final String title;
  AnimatedPositionedPage({Key key, this.title}):super(key:key);
  @override
  _AnimatedPositionedPageState createState() => _AnimatedPositionedPageState();
}

class _AnimatedPositionedPageState extends State<AnimatedPositionedPage> with SingleTickerProviderStateMixin{
  AnimationController animationController;
  Animation animation;
  bool reverse = false;


  void initState(){
    super.initState();
    animationController = AnimationController(vsync: this, duration:Duration(seconds: 1));
    animation = Tween<double>(begin:0, end:1).animate(animationController);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),

      body: Center(
        child: Container(
          child: InkWell(
            onTap: (){
              if(reverse == false)
                animationController.forward();
              else
                animationController.reverse();
            },
          ),
        ),
      ),
    );
  }
}
