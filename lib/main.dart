import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   myAnswer(){
     print('print asdasd');
    return 1;

  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Whats yout favaurite color?',
      'Whats yout favaurite animal?'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Mohamad Rais'),
      ),
      body: Column(
        children: [
          Text('The Questions'),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: ()=> {print('test')},
          ),
          RaisedButton(child: Text(questions[1]), onPressed: myAnswer),
          RaisedButton(child: Text(questions.elementAt(0)), onPressed: null),
          RaisedButton(child: Text(questions[0]), onPressed: null),
        ],
      ),
    ));
  }
}
