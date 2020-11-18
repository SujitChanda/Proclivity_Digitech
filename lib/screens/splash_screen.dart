import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';


class SplashScreen extends StatefulWidget {
  final Color backgroundColor = Colors.white;
  final TextStyle styleTextUnderTheLoader = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashDelay = 2;

  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async { 
    var _duration = new Duration(seconds: splashDelay);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacementNamed(context, '/Login_Screen');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
        body: new Center(
          child: Container(

            //color: Colors.red,
            width: 300,
            child: Shimmer.fromColors(
              period: Duration(seconds: 2),
              child: Image.asset("assets/logo00.png"), 
              baseColor: Colors.transparent, 
              highlightColor: Color(0XFF0AA7BA))),

    
    ));
  }
}
