import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LearnTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Learn Text")),
      body: new Container(
          padding: EdgeInsets.all(10),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text("富文本:", textAlign: TextAlign.left),
              new RichTextWidget()
            ],
          )),
    );
  }
}

class RichTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Text.rich(TextSpan(text: "This text is ", children: <TextSpan>[
      new TextSpan(
          text: "rich",
          style: new TextStyle(color: Colors.red),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text("点击了rich"),
                      ));
            })
    ]));
  }
}
