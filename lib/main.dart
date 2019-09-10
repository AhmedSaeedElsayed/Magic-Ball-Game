import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: MagicBall(),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'ASK ME ANY THING',
          style: TextStyle(fontFamily: "BreeSerif", fontSize: 25.0),
        ),
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          color: Color(0xff1fab89),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 35.0, bottom: 40.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      ballNumber = 0;
                    });
                  },
                  child: Icon(
                    Icons.replay,
                    size: 100.0,
                    color: Colors.white,
                  ),
                ),
              ),
              InkWell(
                  onTap: () {
                    setState(() {
                      ballNumber = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset('images/ball$ballNumber.png')),
            ],
          ),
        ),
      ),
    );
  }
}
