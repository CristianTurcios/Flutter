import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final double iconSize = 40.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Container(
              child: Center(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              MyCard(
                  icon: Icon(Icons.favorite,
                      size: iconSize, color: Colors.purple),
                  text: Text(
                    'Hola',
                    style: TextStyle(color: Colors.yellowAccent),
                  )),
              MyCard(
                  icon:
                      Icon(Icons.hearing, size: iconSize, color: Colors.indigo),
                  text: Text('Hola')),
              MyCard(
                  icon: Icon(Icons.video_call,
                      size: iconSize, color: Colors.deepPurple),
                  text: Text('Hola')),
            ],
          ))),
        ));
  }
}

class MyCard extends StatelessWidget {
  final Widget icon;
  final Widget text;

  MyCard({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 1.0),
      child: Card(
          child: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          children: <Widget>[this.text, this.icon],
        ),
      )),
    );
  }
}
