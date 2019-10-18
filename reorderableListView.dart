import 'package:flutter/material.dart';

class ReorderableListViewpage extends StatefulWidget {
  final String title;
  ReorderableListViewpage({Key key, this.title}):super(key:key);
  @override
  _ReorderableListViewpageState createState() => _ReorderableListViewpageState();
}

class _ReorderableListViewpageState extends State<ReorderableListViewpage> {
  List<String> data = ['Dart',"Php","Java","C",'C++',"Flutter","Python","C#","Perl"];

  void onreorder( int oldindex, int newindex){
    setState(() {
      if(newindex > oldindex){
        newindex -= 1;
      }
      var x = data.removeAt(oldindex);
      data.insert(newindex, x);
    });
  }
  void onsort(){
   setState(() {
     data.sort();
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.sort_by_alpha), tooltip: "Sort it", onPressed: onsort),
        ],
      ),
      body: ReorderableListView(
          children: data.map((index)=>ListTile(key:ObjectKey(index), title: Text('${index}'), subtitle: Text('move it anywhere'),)).toList(),
          onReorder: onreorder,
      ),
    );
  }
}
