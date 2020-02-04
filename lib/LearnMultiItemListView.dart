import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LearnMultiItemListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: Text("Learn multi item ListView")),
      body: MultiItemListView(
          items: new List<ListItem>.generate(
              1000,
              (i) => i % 6 == 0
                  ? new HeadingItem("Heading $i")
                  : new MessageItem("Sender $i", "Message body $i"))),
    );
  }
}

class MultiItemListView extends StatelessWidget {
  final List<ListItem> items;

  MultiItemListView({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        // ignore: missing_return
        itemBuilder: (context, index) {
          final item = items[index];
          if (item is HeadingItem) {
            return ListTile(
                title: new Text(item.heading,
                    style: Theme.of(context).textTheme.headline));
          } else if (item is MessageItem) {
            //支持侧滑退出
            return Dismissible(
              key: new Key(index.toString()),
              background: Container(color: Colors.red),
              child:
                  ListTile(title: Text(item.sender), subtitle: Text(item.body)),
              onDismissed: (direction) {
                items.remove(item);
              },
            );
          }
        });
  }
}

abstract class ListItem {}

class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}
