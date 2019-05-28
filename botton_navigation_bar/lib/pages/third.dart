import 'package:flutter/material.dart';

class Airplane extends StatelessWidget {
  const Airplane({Key key}) : super(key: key);

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
                Icons.airplanemode_active,
                size: 160.0,
                color: Colors.white
              ),
              Text(
                'Tecer Tab',
                style: TextStyle(color: Colors.white))
            ],
          )
        )
      )
    );
  }
}