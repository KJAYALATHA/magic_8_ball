import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.blue[400],
          appBar: AppBar(
            centerTitle: true,
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue[900],
          ),
          body: Ballpage()),
    ),
  );
}

class Ballpage extends StatefulWidget {
  @override
  _BallpageState createState() => _BallpageState();
}

class _BallpageState extends State<Ballpage> {
  int ballnumber = 1;
  void next() {
    ballnumber=ballnumber+1;
    if(ballnumber==6){
      ballnumber=1;
    }

  }
  void previous() {
    ballnumber=ballnumber-1;
    if(ballnumber==0){
      ballnumber=5;
    }

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: FlatButton(
            child:Icon(Icons.arrow_back_ios),
            onPressed: () {
              setState(() {
                previous();
              });
            },
          ),
        ),
        Expanded(
          child: FlatButton(
              onPressed: () {
                setState(() {
                  ballnumber = Random().nextInt(5) + 1;
                  print(ballnumber);
                });
              },
              child: Image.asset('images/ball$ballnumber.png')),
        ),
        Expanded(
          child: FlatButton(
            child:Icon(Icons.arrow_forward_ios),
            onPressed: () {
              setState(() {
next();
              });
            },
          ),
        ),
      ]),
    );
  }
}
