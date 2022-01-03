import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingList extends StatefulWidget {
  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ShoppingList'),automaticallyImplyLeading: false,centerTitle: true,),
      body: const Center(
        child: Text('ShoppingList Screen', style: TextStyle(fontSize: 40),),
      ),
    );
  }
}
