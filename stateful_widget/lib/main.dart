import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
  home: MyButton(),
));

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}


class _MyButtonState extends State<MyButton> {
  String text = "";
  List<String> collection = ["Hola", "Como", "Estas"];
  final random = new Random();

  void onPressButton() {
    setState(() {
      text = collection[random.nextInt(3)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('stateful widget') ,
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(text, style: TextStyle(fontSize: 36)),
            ),
            Padding(padding: EdgeInsets.all(10)),
            RaisedButton(
              child: Text("Actualizar", style: TextStyle(color: Colors.white)),
              color: Colors.blueAccent,
              onPressed: onPressButton,
            ) 
          ],
        ),
      ),
    );
  }  
}
