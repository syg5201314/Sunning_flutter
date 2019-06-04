import 'package:flutter/material.dart';
import 'package:sunning_zhihu/config.dart';
import 'package:sunning_zhihu/home/Follow.dart';

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new _HomePageStatus();
  }
}

class _HomePageStatus extends State<HomePage> {
  Widget barSearch() {
    return new Container(
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new FlatButton.icon(
                  onPressed: () {
                    Navigator.of(context)
                        .push(new MaterialPageRoute(builder: (context) {
                      return new HomePage();
                    }));
                  },
                  icon: new Icon(
                    Icons.search,
                    color: GlobalConfig.fontColor,
                    size: 16.0,
                  ),
                  label: new Text(
                    '我们好像在哪见过，你记得吗？',
                    style: new TextStyle(
                        color: GlobalConfig.fontColor, fontSize: 16.0),
                  )))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(length: 3, child: new Scaffold(
      appBar: new AppBar(
        title: barSearch(),
        bottom: new TabBar(tabs: [
          new Tab(text: "关注"),
          new Tab(text: "推荐"),
          new Tab(text: "热榜"),
        ],
          labelColor: GlobalConfig.dark == true ? new Color(0xFF63FDD9) : Colors.white,
          unselectedLabelColor: GlobalConfig.dark == true ? Colors.white : Colors.black,
        ),
      ),
      body: new TabBarView(children: [
        new Follow(),
//        new Recommend(),
//        new Hot()
      ]),
    ));
  }
}
