import 'package:flutter/material.dart';
import 'dart:math';




class InheritedWidgetPage extends StatefulWidget {
  final String title;
  InheritedWidgetPage({Key key, this.title}):super(key:key);
  @override
  _InheritedWidgetPageState createState() => _InheritedWidgetPageState();
}

class _InheritedWidgetPageState extends State<InheritedWidgetPage> {
  final Random _random = Random();
  Color color = Colors.orange;

  void onTap(){
    setState(() {
      color = Color.fromRGBO(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextDouble(),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return ColorState(
      color: color,
      onTap: onTap,
      child: BoxTree(),
    );
  }
}


class ColorState extends InheritedWidget{
  Color color;
  final Function onTap;
  ColorState({
    Key key,
    this.color,
    this.onTap,
    Widget child,
}):super(key:key, child:child);

  @override
  bool updateShouldNotify(ColorState oldWidget) {
    // TODO: implement updateShouldNotify
    return color != oldWidget.color;
  }

  static ColorState of(BuildContext context){
    return context.inheritFromWidgetOfExactType(ColorState);
  }
}

class BoxTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('inherited widget'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),

      body: Center(
        child: Row(
          children: <Widget>[
            Box(),
            Box(),
          ],
        ),
      ),
    );
  }
}


class Box extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final colorState = ColorState.of(context);
    return GestureDetector(
      onTap: colorState.onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15.0),
            width: 80.0,
            height: 80.0,
            margin: EdgeInsets.only(left:100.0),
            color: colorState.color,
          ),
        ],
      )
    );
  }
}
