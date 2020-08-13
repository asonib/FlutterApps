import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final desc = Text(
    'A place for all developers to connect. Create a profile and show your talent to the world, help other developers by solving complex problems posted in the forum',
    style: TextStyle(
      fontSize: 15,
      fontFamily: 'Roboto',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Basic Layout',
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(1),
        child: Column(
          children: <Widget>[
            Image.asset(
              'icon.jpeg',
              width: 100,
            ),
            Expanded(
              child: Text(
                'Developer Portfolio',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(10),
              child: desc,
            )),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.green[500]),
                      Icon(Icons.star, color: Colors.green[500]),
                      Icon(Icons.star, color: Colors.green[500]),
                      Icon(Icons.star, color: Colors.black),
                      Icon(Icons.star, color: Colors.black),
                    ],
                  ),
                  Text(
                    '170 Reviews',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.account_balance_wallet,
                          color: Colors.blue[300],
                        ),
                        Row(
                          children: <Widget>[Text('Login')],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.account_balance_wallet,
                          color: Colors.blue[300],
                        ),
                        Row(
                          children: <Widget>[Text('Developers')],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.account_balance_wallet,
                          color: Colors.blue[300],
                        ),
                        Row(
                          children: <Widget>[Text('Register')],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
