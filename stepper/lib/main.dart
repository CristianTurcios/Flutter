import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
   home: MyStepper(),
  ));
}

class MyStepper extends StatefulWidget {
  MyStepper({Key key}) : super(key: key);

  _MyStepperState createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
 int _currentStep = 0;
 List<Step> mySteps = [
  new Step(
    title: Text("Firts step"),
    content: Text("Aprender Flutter")
  ),
  new Step(
    title: Text("Second step"),
    content: Text("Construir app")
  ),
  new Step(
    title: Text("Third step"),
    content: Text("Publicar app")
  )
 ];

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text("Demo Stepper"),
         ),
         body: Container(
           child: Stepper(
            //  indica el paso actual del stepper
             currentStep: this._currentStep,
             steps: mySteps,
             type: StepperType.horizontal,
             onStepContinue: (){setState(() {
               if(_currentStep < mySteps.length -1 ) {
                _currentStep += 1;
               }
               else {
                 _currentStep = 0;
               }
             });},
             onStepTapped: (step) {
               setState(() {
                _currentStep = step;
                print('Mi paso actual es: $step'); 
               });
             } ,
             onStepCancel: () {setState(() {
               
               
               if(_currentStep > 0 ) {
                 _currentStep -= 1;
               }
               else {
                 _currentStep = 0;
               }
             });},
           ),
         ),
       ),
    );
  }
}