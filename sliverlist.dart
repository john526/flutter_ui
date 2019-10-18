import'package:flutter/material.dart';


class SliverListPage extends StatefulWidget {
  final String title;
  SliverListPage({Key key, this.title}):super(key:key);
  @override
  _SliverListPageState createState() => _SliverListPageState();
}

class _SliverListPageState extends State<SliverListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Container(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                title: Text(widget.title),
                backgroundColor: Colors.deepPurple,
                leading: Icon(Icons.account_circle),
                centerTitle: true,
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                    ListTile(
                      leading: Icon(Icons.cached),
                      title: Text('Widget'),
                    ),
                    ListTile(
                      leading: Icon(Icons.cached),
                      title: Text('Widget'),
                    ),
                    ListTile(
                      leading: Icon(Icons.cached),
                      title: Text('Widget'),
                    ),
                    ListTile(
                      leading: Icon(Icons.cached),
                      title: Text('Widget'),
                    ),
                    ListTile(
                      leading: Icon(Icons.cached),
                      title: Text('Widget'),
                    ),
                    ListTile(
                      leading: Icon(Icons.cached),
                      title: Text('Widget'),
                    ),
                    ListTile(
                      leading: Icon(Icons.cached),
                      title: Text('Widget'),
                    ),
                    ListTile(
                      leading: Icon(Icons.cached),
                      title: Text('Widget'),
                    ),
                    ListTile(
                      leading: Icon(Icons.cached),
                      title: Text('Widget'),
                    ),
                    ListTile(
                      leading: Icon(Icons.cached),
                      title: Text('Widget'),
                    ),
                    ListTile(
                      leading: Icon(Icons.cached),
                      title: Text('Widget'),
                    ),
                    ListTile(
                      leading: Icon(Icons.cached),
                      title: Text('Widget'),
                    ),
                    ListTile(
                      leading: Icon(Icons.cached),
                      title: Text('Widget'),
                    ),
                    ListTile(
                      leading: Icon(Icons.cached),
                      title: Text('Widget'),
                    ),
                    ListTile(
                      leading: Icon(Icons.cached),
                      title: Text('Widget'),
                    ),
                  ]),
              ),
            ],
          ),
        ) ,
      ),
    );
  }
}
