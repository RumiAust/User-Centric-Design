import 'package:flutter/material.dart';
import 'package:food_roots/screens/home.dart';
import 'package:food_roots/screens/loader.dart';
void main() {
  runApp( MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loader(),
        '/home': (context) => Home(),
        '/loader': (context) => Loader(),
      }

  ));
}