import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings'),automaticallyImplyLeading: false,centerTitle: true,),
      body: const Center(
        child: Text('Settings Screen', style: TextStyle(fontSize: 40),),
      ),
    );
  }
}
