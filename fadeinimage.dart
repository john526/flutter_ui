//import 'package:transparent_image/transparent_image.dart';
import 'package:flutter/material.dart';


class FadeInImagePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FadeIn Image"),
      ),
      body: Center(
        child: FadeInImage.assetNetwork(placeholder: 'images/tech-3041437__480.jpg', image: 'https://cdn.pixabay.com/photo/2019/06/21/14/09/coffe-4289545__480.jpg'),
      ),
    );
  }
}
