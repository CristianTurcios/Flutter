import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.home,
            size: 170.0,
            color: Colors.blue,
          ),
          Text('Primer tab')
        ],
      ),
    );
  }
}