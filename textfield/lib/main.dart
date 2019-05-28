import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyTextField(),
  ));
}

class MyTextField extends StatefulWidget {
  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String inputValue = '';
  final TextEditingController controller = new TextEditingController();

  // void onSubmitted(String value) {
  //   setState(() {
  //     inputValue = value;
  //     controller.clear();
  //   });
  // }

  void _alertResult(String value) {
    print(value);
  }

  void _onPressedButton(String value) {
    AlertDialog dialog = new AlertDialog(
      content: Text(value),
      actions: <Widget>[
        FlatButton(
          onPressed: () {_alertResult('Si');},
          child: Text('Si'),
        ),
        FlatButton(
          onPressed: () {_alertResult('No');},
          child: Text('No'),
        ),
      ],
    );
    
    showDialog(context: context, child: dialog);
  }

  void onChanged(String value) {
    setState(() {
      inputValue += value;
      // controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('textField'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(inputValue),
              TextField(
                decoration: InputDecoration(hintText: 'search here'),
                // onSubmitted: (String value) {
                //   onSubmitted(value);
                // },
                onChanged: (String value) {onChanged(value);},
                controller: controller,
              ),
              RaisedButton(
                child: Text("Ver Alerta"),
                onPressed: () {_onPressedButton(inputValue);},
              )
            ],
          ),
        ),
      ),
    );
  }
}
