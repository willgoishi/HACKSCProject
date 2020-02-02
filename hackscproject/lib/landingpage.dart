import 'package:flutter/material.dart';
import 'package:hackscproject/main.dart';
class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

   return Scaffold(
      appBar: AppBar(
        title: Text("Landing Page"),
      ),
      body: Center(
        child: new MaterialButton(
          child: Text('Sign in'),
          onPressed: () => Navigator.of(context).pushNamed('/login')
      )
      )
    );
  }
}