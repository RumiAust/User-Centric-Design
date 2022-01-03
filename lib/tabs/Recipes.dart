import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_roots/drawer/MyDrawerHeader.dart';

class Recipes extends StatefulWidget {
  @override
  _RecipesState createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipes'),centerTitle: true,),
      body: const Center(
        child: Text('Recipes Screen', style: TextStyle(fontSize: 40),),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyDrawerHeader(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget MyDrawerList() {
    return Container();
  }
}
