import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_roots/tabs/Favorites.dart';
import 'package:food_roots/tabs/Recipes.dart';
import 'package:food_roots/tabs/Search.dart';
import 'package:food_roots/tabs/Settings.dart';
import 'package:food_roots/tabs/ShoppingList.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;
  String title="Food Roots";
  int currentTab=0;
  List<Widget> screens= [
    Favourites(),
    Recipes(),
    Search(),
    Settings(),
    ShoppingList()
  ];

  final PageStorageBucket bucket= PageStorageBucket();
  Widget currentScreen = Favourites();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
       floatingActionButton: FloatingActionButton(
         child: Icon(Icons.search),
         onPressed: () {  },
       ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       bottomNavigationBar: BottomAppBar(
         shape: CircularNotchedRectangle(),
         notchMargin: 10,
         child: Container(
           height: 60,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   MaterialButton(
                     minWidth: 40,
                       onPressed: (){
                       setState(() {
                         currentScreen=Favourites();
                         currentTab=0;
                       });
                       },
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(
                         Icons.favorite_border,
                         color: currentTab==0? Colors.lightGreen: Colors.grey,
                       ),
                        Text('Favorites',
                         style: TextStyle(
                             color: currentTab==0 ? Colors.lightGreen: Colors.grey
                         ),
                        )

                     ],
                   ),
                   ),
                   MaterialButton(
                     minWidth: 40,
                     onPressed: (){
                       setState(() {
                         currentScreen=Recipes();
                         currentTab=1;
                       });
                     },
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(
                           Icons.fastfood_outlined,
                           color: currentTab==1? Colors.lightGreen: Colors.grey,
                         ),
                         Text('Recipes',
                           style: TextStyle(
                               color: currentTab==1 ? Colors.lightGreen: Colors.grey
                           ),
                         )

                       ],
                     ),
                   )


                 ],
               ),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   MaterialButton(
                     minWidth: 40,
                     onPressed: (){
                       setState(() {
                         currentScreen=ShoppingList();
                         currentTab=2;
                       });
                     },
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(
                           Icons.shopping_cart_outlined,
                           color: currentTab==2? Colors.lightGreen: Colors.grey,
                         ),
                         Text('Shopping',
                           style: TextStyle(
                               color: currentTab==2 ? Colors.lightGreen: Colors.grey
                           ),
                         )

                       ],
                     ),
                   ),
                   MaterialButton(
                     minWidth: 40,
                     onPressed: (){
                       setState(() {
                         currentScreen=Settings();
                         currentTab=3;
                       });
                     },
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(
                           Icons.settings,
                           color: currentTab==3? Colors.lightGreen: Colors.grey,
                         ),
                         Text('Settings',
                           style: TextStyle(
                               color: currentTab==3 ? Colors.lightGreen: Colors.grey
                           ),
                         )

                       ],
                     ),
                   )


                 ],
               )
             ],
           ),
         ),
       ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
