import 'package:flutter/material.dart';
import 'home.dart';
import 'profile.dart';

class CopyRigthPage extends StatefulWidget {
  @override
  _CopyRigthPageState createState() => _CopyRigthPageState();
}

class _CopyRigthPageState extends State<CopyRigthPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WidgetsAppPage()));
              },
              child: Container(
                color: Colors.red,
                width: 200.0,
                height: 200.0,
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.forward),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,

          child: Container(
            height: 40.0,
            child: Text('copy'),
          ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
