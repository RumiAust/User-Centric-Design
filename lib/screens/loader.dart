import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loader extends StatefulWidget {
  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  void getData() async {

    // simulate network request for a username
    await Future.delayed(Duration(seconds: 1), () {});
    Navigator.pushNamed(context, '/home');

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.pinkAccent.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              const SpinKitFadingCube(
              color: Colors.white,
              size: 50.0,
            ),
            Text(
              'FOOD ROOTS',
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
      ),
    );
  }
}
