import 'package:flutter/material.dart';
import 'package:food_roots/drawer/MyDrawerHeader.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 100,
              backgroundImage:AssetImage('assets/Jennifer_Connelly.jpg'),
        ),
        ),
        title: const Text('Favorites'),
        centerTitle: true,
      ),



      body: const Center(
        child: Text('Favorite Screen', style: TextStyle(fontSize: 40),),
      ),
      // drawer: Drawer(
      //   child: SingleChildScrollView(
      //     child: Container(
      //       child: Column(
      //         children: [
      //           MyDrawerHeader(),
      //           MyDrawerList(),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
  Widget MyDrawerList() {
    return Container();
  }
}
