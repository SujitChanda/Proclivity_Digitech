import 'package:flutter/material.dart';

import 'app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  Widget build(BuildContext context) {
    return MaterialApp(
     // debugShowCheckedModeBanner: false,
      title: 'Proclivity Digitech',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(title: Text("Proclivity"),),
        body: Center(
          child: Text("Proclivity", style: TextStyle(fontSize: 30),)
        ),
      ),
    );
  }
}

