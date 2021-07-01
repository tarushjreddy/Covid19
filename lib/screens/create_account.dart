import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Text("data"),
          Center(
            child: ElevatedButton(
              child: Text('SignUp'),
              onPressed: () {
                //sign up function
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Login()),
              // );
            },
            child: new Text("Login"),
          )
        ],
      ),
    ));
  }
}
