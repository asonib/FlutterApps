import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int num = 0;

  void _printAnswer() {
    print('Button Pressed ' + num.toString());
    num += 1;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Text(
                "Hello App",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                child: Text('Press'),
                onPressed: _printAnswer,
                padding: EdgeInsets.all(5),
              ),
              Text(
                num.toString(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
