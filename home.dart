import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import './mediaQuery.dart';
import './aspectRatio.dart';
import './constrainedBox.dart';
import './richText.dart';
import './stack.dart';
import './spacer.dart';
import './limited.dart';
import './placeholder.dart';
import './reorderableListView.dart';
import './indexStack.dart';
import './animatedIcon.dart';
import './animatedOpacity.dart';
import'./animatedPadding.dart';
import './animatedList.dart';
import './draggable.dart';
import 'dismissible.dart';
import 'animatedContainer.dart';
import 'fadeinimage.dart';
import 'backdropfilter.dart';
import 'FadeTrasition.dart';
import 'expanded.dart';
import 'align.dart';
import 'absorbpointer.dart';
import 'floatingactionbutton.dart';
import 'sizedbox.dart';
import 'opacity.dart';
import 'fittedbox.dart';
import'sliverappbar.dart';
import 'sliverlist.dart';
import'safearea.dart';
import 'table.dart';
import 'tooltip.dart';
import 'transform.dart';
import 'wrap.dart';
import 'positioned.dart';
import'animatedPositioned.dart';
import'inheritedwidget.dart';
import'pageview.dart';
import 'hero.dart';
import'streambuilder.dart';
import 'layoutbuilder.dart';






class WidgetsAppPage extends StatefulWidget {
  @override
  _WidgetsAppPageState createState() => _WidgetsAppPageState();
}

class _WidgetsAppPageState extends State<WidgetsAppPage> {
  List<Widget> arrWid = [
    AbsorbPointerPage(title: 'AbsorbPointer Page',),
    AlignPage(title: 'Align Page',),
    AnimatedContainerPage(title: 'Animated Container',),
    AnimatedIconPage(title: "Animated Icon",),
    AnimatedListPage(title:"AnimatedList"),
    AniamtedOpacityPage(title: "AniamtedOpacity"),
    AnimatedPaddingPage(title: "AnimatedPadding",),
    AnimatedPositionedPage(title: 'AnimatedPositioned',),
    AspectPage(title:"AspectRatio",),
    BackDropContainer(title: 'BackDrop Container',),
    ConstrainedPage(title:"ConstrainedBox",),
    DraggablePage(title:"Draggable",),
    DimissiblePage(title: 'Dismissible',),
    ExpandedPage(title: 'Expanded Page',),
    FadeInImagePage(),
    FadeTrasitionPage(title: 'Fade Trasition Page',),
    FittedBoxPage(title:'FittedBox'),
    FloatingActionButtonPage(title:'FloatingActionButton'),
    HeroPage(title: 'Hero',),
    IndexStackPage(title:"IndexStack"),
    InheritedWidgetPage(title: 'Inherited',),
    LayoutBuilderPage(title: 'LayoutBuilder',),
    LimitedPage(title: "Limitedbox",),
    MediaQueryPage(title:"MediaQuery",),
    OpacityPage(title: 'OpacityPage',),
    PageViewPage(title:'PageView'),
    PlaceholderPage(title:"Placeholder"),
    PositionedPage(title:'PositionedPage'),
    ReorderableListViewpage(title:"ReorderableListView"),
    RicheTextPage(title:"RicheText"),
    SafeAreaPage(title: 'SafeArea',),
    SizedboxPage(title: 'SizedboxPage',),
    SliverAppBarApp(title:'SliverAppBar'),
    SliverListPage(title:'SliverList Page'),
    SpacerPage(title:"Spacer"),
    StackPage(title:"Stack"),
    StreamBuilderPage(title:'StreamBuilder'),
    TableAppPage(title:'TableAppPage'),
    ToolTipPage(title:'ToolTipPage'),
    TransformPage(title:'TransformPage'),
    WrapPage(title: 'WrapPage',),







  ]; // list of widget

  List<String> textWid = [
    'AbsorbPointerPage',
    'Align Page',
    'Animated Container',
    "Animated Icon",
    "AnimatedList",
    "AniamtedOpacity",
    "AnimatedPadding",
    'AnimatedPositionedPage',
    "AspectRatio",
    'BackDrop Container',
    "ConstrainedBox",
    "Draggable",
    'Dismissible',
    'Expanded Page',
    'FadeIn Page',
    'Fade Trasition Page',
    'FittedBox',
    'FloatingActionButton',
    'Hero',
    "IndexStack",
    'Inherited widget',
    'LayoutBuilder',
    "Limitedbox",
    "MediaQuery",
    'OpacityPage',
    "Placeholder",
    'PageView',
    'Positioned',
    "ReorderableListView",
    "RicheText",
    'SafeArea',
    'SizedboxPage',
    'Sliver AppBar',
    'SliverList',
    "Spacer",
    "Stack",
    'StreamBuilder',
    'Table',
    'ToolTip',
    'TransformPage',
    'Wrap',

  ];
  void _launchURL() async {
    const url = 'https://github.com/2fev/Flutter-20-widgets-';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("widget App Demo"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.description), onPressed:_launchURL,)
        ],
      ),
      body: ListView.builder(
          itemCount: textWid.length,
          itemBuilder: (context ,i ){
            return InkWell(
              onTap: (){
                setState(() {
                  toWidgetPage(arrWid[i]);
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width,

                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Card(
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 55.0,
                              height: 55.0,

                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.green,
                                backgroundImage: AssetImage('images/flutter1.png'),
                              ),
                            ),
                            SizedBox(width: 30.0,),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  textWid[i],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ) ,
              ),
            );
          }
      ),
    );
  }
  void toWidgetPage(Widget wid){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return wid;
    }));
  }
}
