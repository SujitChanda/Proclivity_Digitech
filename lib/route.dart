import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proclivity_digitech/screens/home_screen.dart';
import 'package:proclivity_digitech/utility/splash_screen.dart';
import 'utility/noInternet_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) =>SplashScreen());
      case '/Home_Screen':
        return MaterialPageRoute(builder: (context) =>HomeScreen());
      case '/NoInterner':
        return MaterialPageRoute(builder: (context) => NoInternet_screen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
          appBar: AppBar(title: Text("Error")),
          body: Center(
            child: Text("Page Not Found"),
          ));
    });
  }
}
