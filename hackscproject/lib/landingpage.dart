import 'package:flutter/material.dart';
import 'main.dart';
class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

         final loginhome = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.deepOrange,
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () => Navigator.of(context).pushNamed('/login'),
            child: Text("Login to Account",
                textAlign: TextAlign.center,
               ),
          ),
        );

   return Scaffold(
      appBar: AppBar(
        title: Text("Landing Page"),
      ),
      backgroundColor: Colors.deepPurpleAccent,
       body: Center(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    
                   SizedBox(
                      height: 155.0,
                      child: Image.asset(
                        "assets/resilience.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    
                    SizedBox(height: 35.0),
                    loginhome,

                    
                    

                  ],
                ),
        
      )
    );
  }
}