import 'package:flutter/material.dart';
import 'package:bharatkart/main.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        elevation: 0.1,
        title: Text("BHARATKART"),
        actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => HomePage()));
              })
        ],
      ),
      body: 
      Center(child: Column(children: [Text("SignIn")],),)
    );
  }
}