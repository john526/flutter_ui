import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedIconPage extends StatefulWidget {
  final String title;
  AnimatedIconPage({Key key, this.title}):super(key:key);
  @override
  _AnimatedPageIconState createState() => _AnimatedPageIconState();
}

class _AnimatedPageIconState extends State<AnimatedIconPage> with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;
  bool reverse = false;
  @override

  void initState(){
    super.initState();
    animationController = AnimationController(vsync: this, duration:Duration(seconds: 1));
    animation = Tween<double>(begin:0, end:1).animate(animationController);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              children: <Widget>[
                InkWell(
                  onTap: (){
                    if(reverse == false)

                      animationController.forward();
                    else
                      animationController.reverse();

                    reverse = !reverse;
                  },
                  child: AnimatedIcon(
                    color: Colors.red,
                    size: 100,
                    progress: animation,
                    icon: AnimatedIcons.search_ellipsis,
                  ),
                ),
                InkWell(
                  onTap: (){
                    if(reverse == false)

                      animationController.forward();
                    else
                      animationController.reverse();

                    reverse = !reverse;
                  },
                  child: AnimatedIcon(
                    color: Colors.orange,
                    size: 60,
                    progress: animation,
                    icon: AnimatedIcons.arrow_menu,
                  ),
                ),
                InkWell(
                  onTap: (){
                    if(reverse == false)

                      animationController.forward();
                    else
                      animationController.reverse();

                    reverse = !reverse;
                  },
                  child: AnimatedIcon(
                    color: Colors.green,
                    size: 100,
                    progress: animation,
                    icon: AnimatedIcons.play_pause,
                  ),
                ),
                InkWell(
                  onTap: (){
                    if(reverse == false)

                      animationController.forward();
                    else
                      animationController.reverse();

                    reverse = !reverse;
                  },
                  child: AnimatedIcon(
                    color: Colors.deepPurple,
                    size: 50,
                    progress: animation,
                    icon: AnimatedIcons.play_pause,
                  ),
                ),
              ],
            ),


            Row(
              children: <Widget>[
                InkWell(
                  onTap: (){
                    if(reverse == false)

                      animationController.forward();
                    else
                      animationController.reverse();

                    reverse = !reverse;
                  },
                  child: AnimatedIcon(
                    color: Colors.red,
                    size: 100,
                    progress: animation,
                    icon: AnimatedIcons.event_add,
                  ),
                ),
                InkWell(
                  onTap: (){
                    if(reverse == false)

                      animationController.forward();
                    else
                      animationController.reverse();

                    reverse = !reverse;
                  },
                  child: AnimatedIcon(
                    color: Colors.orange,
                    size: 60,
                    progress: animation,
                    icon: AnimatedIcons.arrow_menu,
                  ),
                ),
                InkWell(
                  onTap: (){
                    if(reverse == false)

                      animationController.forward();
                    else
                      animationController.reverse();

                    reverse = !reverse;
                  },
                  child: AnimatedIcon(
                    color: Colors.green,
                    size: 100,
                    progress: animation,
                    icon: AnimatedIcons.view_list,
                  ),
                ),
                InkWell(
                  onTap: (){
                    if(reverse == false)

                      animationController.forward();
                    else
                      animationController.reverse();

                    reverse = !reverse;
                  },
                  child: AnimatedIcon(
                    color: Colors.deepPurple,
                    size: 50,
                    progress: animation,
                    icon: AnimatedIcons.play_pause,
                  ),
                ),
              ],
            ),

            Row(
              children: <Widget>[
                InkWell(
                  onTap: (){
                    if(reverse == false)

                      animationController.forward();
                    else
                      animationController.reverse();

                    reverse = !reverse;
                  },
                  child: AnimatedIcon(
                    color: Colors.red,
                    size: 100,
                    progress: animation,
                    icon: AnimatedIcons.search_ellipsis,
                  ),
                ),
                InkWell(
                  onTap: (){
                    if(reverse == false)

                      animationController.forward();
                    else
                      animationController.reverse();

                    reverse = !reverse;
                  },
                  child: AnimatedIcon(
                    color: Colors.orange,
                    size: 60,
                    progress: animation,
                    icon: AnimatedIcons.add_event,
                  ),
                ),
                InkWell(
                  onTap: (){
                    if(reverse == false)

                      animationController.forward();
                    else
                      animationController.reverse();

                    reverse = !reverse;
                  },
                  child: AnimatedIcon(
                    color: Colors.greenAccent,
                    size: 100,
                    progress: animation,
                    icon: AnimatedIcons.menu_home,
                  ),
                ),
                InkWell(
                  onTap: (){
                    if(reverse == false)

                      animationController.forward();
                    else
                      animationController.reverse();

                    reverse = !reverse;
                  },
                  child: AnimatedIcon(
                    color: Colors.blue,
                    size: 50,
                    progress: animation,
                    icon: AnimatedIcons.play_pause,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
