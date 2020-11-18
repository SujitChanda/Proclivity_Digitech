import 'package:flutter/material.dart';
import 'package:proclivity_digitech/route.dart';

import 'app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  Widget build(BuildContext context) {
    return MaterialApp(
     // debugShowCheckedModeBanner: false,
      debugShowCheckedModeBanner: false,
      title: "Proclivity Digitech",
     theme: AppTheme.lightTheme,
     darkTheme: AppTheme.darkTheme,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

