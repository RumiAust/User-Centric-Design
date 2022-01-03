import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorites'),automaticallyImplyLeading: false,centerTitle: true,),


      body: const Center(
        child: Text('Favorite Screen', style: TextStyle(fontSize: 40),),
      ),
    );
  }
}
