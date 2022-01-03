import 'package:flutter/material.dart';
import 'package:food_roots/screens/home.dart';
void main() {
  runApp( MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/home': (context) => Home(),
      }
  ));
}