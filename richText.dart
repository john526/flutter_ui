import 'package:flutter/material.dart';

class RicheTextPage extends StatefulWidget {
  final String title;
  RicheTextPage({Key key, this.title}):super(key:key);
  @override
  _RicheTextPageState createState() => _RicheTextPageState();
}

class _RicheTextPageState extends State<RicheTextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        actions: <Widget>[
          InkWell(
            onTap: (){},
            child: Icon(Icons.description),
          ),
        ],
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("IA image", style:TextStyle(color:Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 35.0,)),
                Card(
                  elevation: 1.0,
                  child: Image.asset("images/a-2729794__340.png"),
                ),
                RichText(
                  text:TextSpan(
                    text: "IA ",
                    style: TextStyle(color: Colors.blueAccent, fontSize: 30.0),
                    children: <TextSpan>[
                      TextSpan(text: 'is the', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: '  future!', style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
                Text(
                    "L'intelligence artificielle est « l'ensemble des théories et des techniques mises en œuvre en vue de réaliser des machines capables de simuler l'intelligence ». "
                        "Elle correspond donc à un ensemble de concepts et de technologies plus qu'à une discipline autonome constituée.",
                  style: TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.justify,
                ),
              ],

            ),
          ),
        ),
    );
  }
}
