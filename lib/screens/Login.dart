import 'package:flutter/material.dart';
import "./create_account.dart";

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Text("data"),
          Center(
            child: ElevatedButton(
              child: Text('Login'),
              onPressed: () {
                //Login function
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreateAccount()),
              );
            },
            child: new Text("Create Account"),
          )
        ],
      ),
    ));
  }
}
