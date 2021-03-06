import 'package:flutter/material.dart';
import 'package:my_app/screens/Splash.dart';
import "screens/Home.dart";
import "screens/add_resource.dart";
import 'screens/resource_selection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResourceSelection(),
    );
  }
}
