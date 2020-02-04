import 'package:flutter/material.dart';

class LearnContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: Text("Learn Container")),
      body: new Container(
          padding: EdgeInsets.all(10),
          child: new ListView(
            children: <Widget>[
              Text("padding:"),
              Container(
                color: Colors.lightBlueAccent,
                height: 100,
                padding: EdgeInsets.all(10),
                child: Container(
                  color: Colors.indigo,
                ),
              ),
              Text("margin:"),
              Container(
                color: Colors.cyan,
                margin: EdgeInsets.all(10),
                height: 100,
              ),
              Text("shadow:"),
              Container(
                height: 100,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 5.0)
                ]),
              ),
              Text("radius:"),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              Text("shape:"),
              Container(
                height: 100,
                decoration:
                    BoxDecoration(color: Colors.indigo, shape: BoxShape.circle),
              ),
              Text("image:"),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1580293649972&di=fc8bc46fd9676f850c45887562b947f4&imgtype=0&src=http%3A%2F%2F01.imgmini.eastday.com%2Fmobile%2F20180530%2F20180530162855_31136051029165cabfa0b76d2d320af9_24.jpeg"),
                        fit: BoxFit.cover)),
              ),
              Text("avator:"),
              //这里必须要嵌套一层Column，因为Container的高度计算问题。参考：https://zhuanlan.zhihu.com/p/41801871
              new Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1580293649972&di=fc8bc46fd9676f850c45887562b947f4&imgtype=0&src=http%3A%2F%2F01.imgmini.eastday.com%2Fmobile%2F20180530%2F20180530162855_31136051029165cabfa0b76d2d320af9_24.jpeg"),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
              Text("borders:"),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red, width: 5)),
              ),
            ],
          )),
    );
  }
}
