import 'package:flutter/material.dart';
import 'package:my_app/screens/Home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import "./Login.dart";

class Splash extends StatefulWidget {
  @override
  SplashState createState() => new SplashState();
}

class SplashState extends State<Splash> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    // if (_seen) {
    //   Navigator.of(context).pushReplacement(new MaterialPageRoute(
    //       builder: (context) => new DetailPage(
    //             storage: Storage(),
    //           )));
    // } else {
    // prefs.setBool('seen', true);
    Navigator.of(context)
        .pushReplacement(new MaterialPageRoute(builder: (context) => Login()));
    // }
  }

  @override
  void initState() {
    super.initState();
    new Timer(new Duration(milliseconds: 1000), () {
      checkFirstSeen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('Loading...'),
      ),
    );
  }
}
