import 'package:flutter/material.dart';

class LearnStackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Learn Stack"),
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Text("Stack的使用:"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 200,
                    child: Stack(
                      alignment: AlignmentDirectional.topStart,
                      //指定字Widget的大小。loose指Widget多大就多大，expand指和父组件一样大小
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.network(
                          "http://img1.tbcdn.cn/tfscom/i1/1042830206/TB2Pj2EXzuhSKJjSspmXXcQDpXa_%21%211042830206.jpg",
                          fit: BoxFit.cover,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "水手服",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        //Positioned控制绝对位置
                        Positioned(
                          left: 20,
                          top: 30,
                          child: Text(
                            "loli",
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
