import 'package:flutter/material.dart';


class StreamBuilderPage extends StatefulWidget {
  final String title;
  StreamBuilderPage({Key key,  this.title}):super(key:key);
  @override
  _StreamBuilderPageState createState() => _StreamBuilderPageState();
}

class _StreamBuilderPageState extends State<StreamBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        initialData: 'Working ...',
        stream: _someData(),
        builder: (context, snapshot){
          return Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
              centerTitle: true,
              backgroundColor: Colors.blueGrey,
            ),
            body: Center(
              child: Container(
                child:Text(snapshot.data.toString(), style: TextStyle(fontSize: 50),) ,
              ),
            ),
            bottomNavigationBar: Text(snapshot.data.toString(),),
            backgroundColor: Colors.blue,
            floatingActionButton: IconButton(
              icon: Icon(Icons.add),
              onPressed: (){
                print(snapshot.data.toString(),);
              },
            ),
          );
        },
    );
  }
}


Stream _someData() async*{
  yield* Stream.periodic(Duration(seconds: 5 ), (int a){
    return a++;
  });
}

