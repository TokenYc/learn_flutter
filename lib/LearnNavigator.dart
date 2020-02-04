import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LearnNavigatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Learn Navigator")),
      body: Center(child: MyButton()),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text("jump second page"),
      onPressed: () {
        _jumpNewPage(context);
      },
    );
  }

  _jumpNewPage(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => SecondPage()));
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("$result"),
    ));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: FlatButton(
          child: Text("back to first page"),
          onPressed: () {
            Navigator.pop(context, "hahaha");
          },
        ),
      ),
    );
  }
}
