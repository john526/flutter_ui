import 'package:flutter/material.dart';


class TableAppPage extends StatefulWidget {
  final String title;
  TableAppPage({Key key, this.title}):super(key:key);
  @override
  _TableAppPageState createState() => _TableAppPageState();
}

class _TableAppPageState extends State<TableAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),

      body: Center(
        child: Container(
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.top,
            children:[
              TableRow(
                children: [
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      margin: EdgeInsets.all(2.0),
                      color: Colors.red,
                      width: 48.0,
                      height: 100.0,
                      child: Center(
                        child: Text('Flutter', textAlign: TextAlign.center, style: TextStyle(fontSize: 6.0),),
                      ),
                    ),
                  ),

                  FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      margin: EdgeInsets.all(2.0),
                      color: Colors.blue,
                      width: 50.0,
                      height: 50.0,
                      child: Center(
                        child: Text('C++', textAlign: TextAlign.center, style: TextStyle(fontSize: 6.0),),
                      ),
                    ),
                  ),

                  FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      margin: EdgeInsets.all(2.0),
                      color: Colors.green,
                      width: 50.0,
                      height: 50.0,
                      child: Center(
                        child: Text('Dart', textAlign: TextAlign.center, style: TextStyle(fontSize: 6.0),),
                      ),
                    ),
                  ),


                ],
              ),

              TableRow(
                children: [
                  FittedBox(
                    fit: BoxFit.contain,
                      child: Container(
                        color: Colors.deepPurple,
                        width: 48.0,
                        height: 50.0,
                        child:Center(
                          child: Text('Laravel', textAlign: TextAlign.center, style: TextStyle(color:Colors.white, fontSize: 6.0, ),),
                        ) ,
                      ),
                  ),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      color: Colors.teal,
                      width: 50.0,
                      height: 48.0,
                      child:Center(
                        child: Text('Laravel', textAlign: TextAlign.center, style: TextStyle(color:Colors.white, fontSize: 6.0, ),),
                      ) ,
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Container(
                      color: Colors.yellowAccent,
                      width: 50.0,
                      height: 100.0,
                      child:Center(
                        child: Text('Laravel', textAlign: TextAlign.center, style: TextStyle(color:Colors.white, fontSize: 6.0, ),),
                      ) ,
                    ),
                  ),
                ],
              ),
            ] ,
          ),
        ),
      ),
    );
  }
}
