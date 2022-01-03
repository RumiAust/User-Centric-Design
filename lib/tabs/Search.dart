import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search'),automaticallyImplyLeading: false,centerTitle: true,),
      body: const Center(
        child: Text('Search Screen', style: TextStyle(fontSize: 40),),
      ),
    );
  }
}
