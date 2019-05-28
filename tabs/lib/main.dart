import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/video.dart';
import 'pages/contact.dart';


void main() {
  runApp(new MaterialApp(
    home: MyTabs(),
  ));
}

class MyTabs extends StatefulWidget {
  MyTabs({Key key}) : super(key: key);

  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Video'),
          backgroundColor: Colors.red,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.ondemand_video)),
              Tab(icon: Icon(Icons.contacts))
            ],
            controller: tabController,
          )
      ),
      body: TabBarView(children: <Widget>[
        home(),
        video(),
        contacts()
      ],
      controller: tabController),
    );
  }
}
