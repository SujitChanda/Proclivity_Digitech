import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color _iconColor = Color(0XFF0AA7BA);

  static const Color _lightPrimaryColor = Colors.white;
  //static const Color _lightPrimaryVarientColor = Colors.green;
  static const Color _lightPrimaryVarientColor = Color(0XFFF58345);
  
  //Color(0xFFCADCED);
  static const Color _lightSecondaryColor = Color(0XFF0AA7BA);
  static const Color _lightOnPrimaryColor = Color(0XFF303030);

  static const Color _darkPrimaryColor = Color(0xFF4A4A58);
  static const Color _darkPrimaryVarientColor = Color(0xFF4A4A58);
  static const Color _darkSecondaryColor = Colors.green;
  static const Color _darkOnPrimaryColor = Colors.white;

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightPrimaryColor,
    appBarTheme: AppBarTheme(
      color:  _lightPrimaryColor,
      elevation: 0,
     iconTheme: IconThemeData(color: _lightOnPrimaryColor),
    ),
    colorScheme: ColorScheme.light(
      primary: _lightPrimaryColor,
      primaryVariant: _lightPrimaryVarientColor,
      secondary: _lightSecondaryColor,
      onPrimary: _lightOnPrimaryColor,
    ),
    iconTheme: IconThemeData(color: _iconColor, size: 30),
    textTheme: _lightTextTheme,
    accentColor: Color(0XFF0AA7BA).withOpacity(0.5)
    
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: _darkPrimaryColor,
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: _darkOnPrimaryColor,
      iconTheme: IconThemeData(color: _darkOnPrimaryColor),
    ),
    colorScheme: ColorScheme.light(
      primary: _darkPrimaryColor,
      primaryVariant: _darkPrimaryVarientColor,
      secondary: _darkSecondaryColor,
      onPrimary: _darkOnPrimaryColor,
    ),
    iconTheme: IconThemeData(color: _iconColor),
    textTheme: _darkTextTheme,
    accentColor: Color(0XFF23b574).withOpacity(0.5)
  );

 

  static final TextTheme _lightTextTheme = TextTheme(
    headline6: _lightScreenHeadingTextStyle,
    bodyText1: _lightScreenTaskNameTextStyle,
    bodyText2: _lightScreenTaskDurationTextStyle,
    
  );

  static final TextTheme _darkTextTheme = TextTheme(
    headline6: _darkScreenHeadingTextStyle,
    bodyText1: _darkScreenTaskNameTextStyle,
    bodyText2: _darkScreenTaskDurationTextStyle,
  );

  static final TextStyle _lightScreenHeadingTextStyle =
      TextStyle(fontFamily: 'Archive',fontSize: 25.0, color: _lightOnPrimaryColor);
  static final TextStyle _lightScreenTaskNameTextStyle =
      TextStyle(fontFamily: 'poppins',  fontSize: 14.0, color: _lightOnPrimaryColor,fontWeight: FontWeight.normal);
  static final TextStyle _lightScreenTaskDurationTextStyle =
      TextStyle(fontFamily: 'poppins',fontSize: 10.0, color: Colors.black87,fontWeight: FontWeight.normal);

  static final TextStyle _darkScreenHeadingTextStyle =
      TextStyle(fontFamily: 'Archive',fontSize: 25.0, color: _darkOnPrimaryColor,fontWeight: FontWeight.normal);
  static final TextStyle _darkScreenTaskNameTextStyle =
      TextStyle(fontFamily: 'poppins',fontSize: 14.0, color: _darkOnPrimaryColor,fontWeight: FontWeight.normal);
  static final TextStyle _darkScreenTaskDurationTextStyle =
      TextStyle(fontFamily: 'poppins',fontSize: 10.0, color: Colors.white, fontWeight: FontWeight.normal);
}
 
 List<BoxShadow> customShadow = [
  //  BoxShadow(
    
  //    color: Colors.white.withOpacity(0.3),
  //    blurRadius: 30,
  //    offset: Offset(-5,-5),
  //    spreadRadius: -5),

     BoxShadow(
       //color: Colors.blue.withOpacity(0.3),
       color: Colors.green.withOpacity(0.15),
       spreadRadius: 10,
       offset: Offset(10,5),
       blurRadius: 20
     )  
   
 ];

 List<BoxShadow> customGreenShadow = [
   BoxShadow(
    
     color:Color(0XFF23b574).withOpacity(0.1),
     blurRadius: 30,
     offset: Offset(-5,-5),
     spreadRadius: -5),

     BoxShadow(
       //color: Colors.blue.withOpacity(0.3),
       color: Colors.lightGreen.withOpacity(0.1),
       spreadRadius: 2,
       offset: Offset(7,7),
       blurRadius: 20
     )  
   
 ];