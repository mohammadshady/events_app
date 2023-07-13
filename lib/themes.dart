import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

var defaultColor = HexColor('#253975');
ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  //primarySwatch: Colors.blue,
  appBarTheme: const AppBarTheme(
    titleSpacing: 20,
    //backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark
    ),
    color: Colors.white,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
);