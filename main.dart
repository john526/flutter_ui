import 'package:flutter/material.dart';
import './home.dart';
import 'profile.dart';
import'copyr.dart';
void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CopyRigthPage(),//WidgetsAppPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
