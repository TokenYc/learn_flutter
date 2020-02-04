import 'package:flutter/material.dart';
import 'package:learn_flutter/LearnContainer.dart';
import 'package:learn_flutter/LearnGestureDetector.dart';
import 'package:learn_flutter/LearnHttp.dart';
import 'package:learn_flutter/LearnListView.dart';
import 'package:learn_flutter/LearnMultiItemListView.dart';
import 'package:learn_flutter/LearnNavigator.dart';
import 'package:learn_flutter/LearnRowAndColumn.dart';
import 'package:learn_flutter/LearnStack.dart';
import 'package:learn_flutter/LearnText.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Flutter',
      home: MyHomePage(title: 'Learn Flutter Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var items = <Widget>[];
    items.add(_buildItem("RichText", new LearnTextPage()));
    items.add(_buildItem("Row And Column", new LearnRowAndColumnPage()));
    items.add(_buildItem("Container", new LearnContainerPage()));
    items.add(_buildItem("Stack", new LearnStackPage()));
    items.add(_buildItem("ListView", new LearnListViewPage()));
    items.add(_buildItem("MultiItemListView", new LearnMultiItemListViewPage()));
    items.add(_buildItem("GestureDetector", new LearnGestureDetectorPage()));
    items.add(_buildItem("Navigator", new LearnNavigatorPage()));
    items.add(_buildItem("Http", new LearnHttpPage()));

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: new GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: items,
        ));
  }

  Widget _buildItem(String text, Widget widget) {
    return GestureDetector(
      child: Container(
          alignment: Alignment.center,
          color: Colors.cyan,
          child: Text(
            text,
            style: new TextStyle(color: Colors.white, fontSize: 20),
            textAlign: TextAlign.center,
          )),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return widget;
        }));
      },
    );
  }
}
