import 'package:flutter/material.dart';
import 'pages/firts.dart';
import 'pages/second.dart';
import 'pages/third.dart';

void main() {
  runApp(new MaterialApp(
    home: MyNavigatorBar(),
  ));
}

class MyNavigatorBar extends StatefulWidget {
  MyNavigatorBar({Key key}) : super(key: key);

  _MyNavigatorBarState createState() => _MyNavigatorBarState();
}

class _MyNavigatorBarState extends State<MyNavigatorBar>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo botton navigation bar'),
        backgroundColor: Colors.orange,
      ),
      bottomNavigationBar: Material(
        color: Colors.orange,
        child: TabBar(
          tabs: <Widget>[
            Tab(icon: Icon(Icons.alarm)),
            Tab(icon: Icon(Icons.watch_later)),
            Tab(icon: Icon(Icons.airplanemode_active)),
          ],
          controller: controller,
        ),
      ),
      body: TabBarView(
          children: <Widget>[new Alarm(), new Clock(), new Airplane()],
          controller: controller),
    );
  }
}
