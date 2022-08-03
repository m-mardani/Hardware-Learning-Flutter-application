import 'dart:async';
import 'second_screen.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StartState();
  }
}

class StartState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 2);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        this.context, MaterialPageRoute(builder: (context) => SecondScreen()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.8, 1),
                colors: <Color>[
                  Color(0xff1f005c),
                  Color(0xff5b0060),
                  Color(0xff870160),
                  Color(0xffac255e),
                  Color(0xffca485c),
                  Color(0xffe16b5c),
                  Color(0xfff39060),
                  Color(0xffffb56b),
                ],
                tileMode: TileMode.mirror,
              ),
            ),
          ),
          Container(
            child: Image.asset("images/logo.png"),
            height: 200,
            width: 200,
            color: Colors.white,
          ),
          Padding(padding: EdgeInsets.only(top: 30)),
          Text(
            "Hardware Engineering",
            style:
                TextStyle(fontSize: 30.0, color: Color.fromARGB(255, 0, 0, 0)),
          ),
          Padding(padding: EdgeInsets.only(top: 100.0)),
          CircularProgressIndicator(
            backgroundColor: Colors.white,
            strokeWidth: 2,
          )
        ],
      ),
    ));
  }
}
