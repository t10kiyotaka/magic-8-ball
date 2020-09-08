import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.indigo,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = randomiseBallNumber();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () {
            setState(() {
              ballNumber = randomiseBallNumber();
            });
            print('I got clicked! The ballNumber is $ballNumber');
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}

// Return random number 1 - 5
int randomiseBallNumber() {
  return Random().nextInt(5) + 1;
}
