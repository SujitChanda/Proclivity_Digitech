import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class NoInternet_screen extends StatelessWidget {
  String _animationName = "no_internet";

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    //final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(height: height * 0.1),
              Text(
                "No Internet Connection !!! ",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
              SizedBox(height: 20),
              Text(
                'Please check your internet connection and try again',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
              SizedBox(height: height * 0.05),
              Expanded(
                child: FlareActor(
                  "assets/no_internet.flr",
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                  animation: _animationName,
                ),
              ),
              SizedBox(height: height * 0.05),
              GestureDetector(
                onTap: () {
                  Navigator.popAndPushNamed(context, '/');
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFFed2839),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(3, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width * 0.5,
                  padding: EdgeInsets.all(13),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "TRY AGAIN",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.blue[950],
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.08),
              Text("Powered By Proclivity Digitech Pvt Ltd")
            ]),
      )),
    );
  }
}
