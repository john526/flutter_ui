import 'package:flutter/material.dart';

class MediaQueryPage extends StatefulWidget {
  final String title;
  MediaQueryPage({Key key, this.title}):super(key:key);
  @override
  _MediaQueryPageState createState() => _MediaQueryPageState();
}

class _MediaQueryPageState extends State<MediaQueryPage> {

  gridviewForPhone(Orientation orientation){
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: GridView.count(
        crossAxisCount: orientation == Orientation.portrait? 2 : 4,
        childAspectRatio: 1.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: List.generate(10, (index){
          return Card(
            child: Container(
              alignment: Alignment.center,
              color: Colors.red[100*(index%9)],
              child: Text('$index'),
            ),
          );
        }),
      ),
    );
  }

  gridviewForTablet(Orientation orientation){
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: GridView.count(
        crossAxisCount: orientation == Orientation.portrait? 4 : 6,
        childAspectRatio: 1.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: List.generate(100, (index){
          return Card(
            child: Container(
              alignment: Alignment.center,
              color: Colors.red[100*(index%9)],
              child: Text('$index'),
            ),
          );
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool userMobileLayout = shortestSide < 600.0;
    final Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: userMobileLayout ? gridviewForPhone(orientation) : gridviewForTablet(orientation),
    );
  }
}
