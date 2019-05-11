import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mishkal/src/Controller.dart';
import 'package:mishkal/src/models/SampleRoutes.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  startTime() async {
   
     final _duration = new Duration(seconds: 2,milliseconds: 500);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(ArchSampleRoutes.home);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color( Con.getColor('background')),
      body: new Center(
        child: new Image.asset('images/miskalphoto.png'),
      ),
    );
  }
}