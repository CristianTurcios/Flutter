import 'package:flutter/material.dart';

class Clock extends StatelessWidget {
  const Clock({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.watch_later,
                size: 160.0,
                color: Colors.white
              ),
              Text(
                'Segundo Tab',
                style: TextStyle(color: Colors.white))
            ],
          )
        )
      )
    );
  }
}