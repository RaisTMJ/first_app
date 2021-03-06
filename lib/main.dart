import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _myAppState();
  }
}

class _myAppState extends State<myApp> {
  var _questionIndex = 0;
  var questions = [
    'Whats yout favaurite color?',
    'Whats yout favaurite animal?',
    'Whats yout favaurite test ?',
    'When last you poop in your trousers?',
    'Whats yout favaurite animal?',
    'Whats yout favaurite animal?',
    'Whats yout favaurite animal?',
    'Whats yout favaurite animal?',
    'Whats yout favaurite animal?',
    'Whats yout favaurite animal?',
    'Whats yout favaurite animal?',
  ];
  _myAnswer() {
    setState(() {
      _questionIndex++;
      if (_questionIndex + 1 == questions.length) _questionIndex--;
    });
    return 1;
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Mohamad Rais'),
            ),
            body: Column(
              children: [
                Text(questions[_questionIndex]),
                RaisedButton(
                  child: Text('Answer b'),
                  onPressed: _myAnswer,
                ),
                RaisedButton(child: Text('Answer 1'), onPressed: _myAnswer),
                RaisedButton(child: Text('Answer 2'), onPressed: _myAnswer),
                RaisedButton(child: Text('Answer 3'), onPressed: _myAnswer),
                RaisedButton(child: Text('Answer 3'), onPressed: _myAnswer),
                RaisedButton(child: Text('Answer 3'), onPressed: _myAnswer),
                RaisedButton(child: Text('Back'), onPressed: _back),
              ],

            ),
            drawer: Drawer(
                child: Text('Drawwwer')// Populate the Drawer in the next step.
            )
        ));
  }

  void _back() {
    setState(() {
      _questionIndex--;
      print(_questionIndex);
      if (_questionIndex == 0) _questionIndex=1;
    });

  }
}
