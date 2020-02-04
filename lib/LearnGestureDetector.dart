import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LearnGestureDetectorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text("Learn GestureDetector")), body: MyButton());
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //使用InkWell代替gestureDetector可以有按下的水波纹效果
    return new InkWell(
      splashColor: Colors.black26,
      onTap: () {
        final snackBar = SnackBar(content: Text("onTap"));
        Scaffold.of(context).showSnackBar(snackBar);
      },
      onDoubleTap: () {
        final snackBar = SnackBar(content: Text("onDoubleTap"));
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        color: Colors.black12,
        padding: EdgeInsets.all(10),
        child: Text("show snackBar"),
      ),
    );
  }
}
