import 'package:flutter/material.dart';

class ConstrainedPage extends StatefulWidget {
  final String title;
  ConstrainedPage({Key key, this.title});
  @override
  _ConstrainedPageState createState() => _ConstrainedPageState();
}

class _ConstrainedPageState extends State<ConstrainedPage> {

  gridviewForPhone(){
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: GridView.count(
        crossAxisCount: 2,
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

  gridviewForTablet(){
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 1.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: List.generate(100, (index){
          return Card(
            child: Container(
              alignment: Alignment.center,
              color: Colors.yellow[100*(index%9)],
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: SafeArea(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints){
              if(constraints.maxWidth < 600.0){
                return gridviewForPhone();
              }
              else{
                return gridviewForTablet();
              }
            },
          ),
      ),
    );
  }
}
