import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Recipes extends StatefulWidget {
  @override
  _RecipesState createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipes'),),
      body: const Center(
        child: Text('Recipes Screen', style: TextStyle(fontSize: 40),),
      ),
    );
  }
}
