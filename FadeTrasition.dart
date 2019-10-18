import 'package:flutter/material.dart';


class FadeTrasitionPage extends StatefulWidget {
  final String title;
  FadeTrasitionPage({Key key, this.title}):super(key:key);
  @override
  _FadeTrasitionPageState createState() => _FadeTrasitionPageState();
}

class _FadeTrasitionPageState extends State<FadeTrasitionPage> with SingleTickerProviderStateMixin {

  AnimationController animationController;
  Animation animation;

  void initState(){
    super.initState();

    animationController = AnimationController(
      value: 1,
      vsync: this,
      duration: Duration(seconds: 5),
    );

    animation = Tween(
      begin:0.0,
      end:1.0
    ).animate(animationController);
  }

  void dispose(){
    super.dispose();
    animationController.dispose();
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FadeTransition(
                  opacity: animation,
                  child: Container(
                    height: 200.0,
                    width: 200.0,
                    color: Colors.green,
                    child: Icon(Icons.access_alarms, size: 150,),
                  ),
              ),
              Padding(padding: EdgeInsets.all(10.0),),
              RaisedButton(
                child: Text('up'),
                onPressed: (){
                  setState(() {
                    (animationController.value == 1) ? animationController.reverse() :  animationController.forward();
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
