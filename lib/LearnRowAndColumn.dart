import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LearnRowAndColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Learn Row and Column")),
      body: new Container(
          padding: EdgeInsets.all(10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("简单的横向布局:"),
                SimpleRowExample(),
                Text("与Expand一起使用:"),
                ExpandedRowExample(),
              ])),
    );
  }
}

class SimpleRowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
      ],
    );
  }
}

class ExpandedRowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        Expanded(child: Container(color: Colors.indigo, height: 100)),
        Expanded(child: Container(color: Colors.lightBlue, height: 100)),
        Expanded(child: Container(color: Colors.lightBlueAccent, height: 100)),
      ],
    );
  }
}
