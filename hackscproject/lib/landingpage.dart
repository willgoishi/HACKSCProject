import 'package:flutter/material.dart';
import 'usercreationform.dart';
class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

   return Scaffold(
      appBar: AppBar(
        title: Text("Landing Page"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
           Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => (UserCreationForm())),
              );
          },
          child: Text('Sign in'),
        ),
      ),
    );
  }
}