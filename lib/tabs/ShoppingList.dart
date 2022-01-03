import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_roots/drawer/MyDrawerHeader.dart';

class ShoppingList extends StatefulWidget {
  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ShoppingList'),centerTitle: true,),
      body: const Center(
        child: Text('ShoppingList Screen', style: TextStyle(fontSize: 40),),
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
