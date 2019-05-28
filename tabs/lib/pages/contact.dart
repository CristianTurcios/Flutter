import 'package:flutter/material.dart';

class contacts extends StatelessWidget {
  const contacts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.contacts,
            size: 170.0,
            color: Colors.grey,
          ),
          Text('Tercer tab')
        ],
      ),
    );
  }
}