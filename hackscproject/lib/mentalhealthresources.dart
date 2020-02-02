import 'package:flutter/material.dart';
class MentalHealthResources extends StatelessWidget {
  @override
Widget build(BuildContext context){
return Scaffold(
  appBar: AppBar(
    title: Text("For Those in Need"),
    ),
    backgroundColor: Colors.deepOrange[100],
    body: SingleChildScrollView(
      child: Center(
        child: Padding(padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          
          children: <Widget>[
            
            SizedBox(
            
              height: 65.0,
              child: Text("National Suicide Prevention Hotline: 1(800) 273-8255",
              style: TextStyle(fontSize: 18) ), 
              ),
            
            SizedBox(
              height: 83.5,
              child: Text("Substance Abuse and Mental Health Services Administration: 1(800) 662-4357",
              style: TextStyle(fontSize: 18)),
              ),
            
            SizedBox(
              height: 65.0,
              child: Text("The Samaritans Support Line: 1(212) 673-3000", 
              style: TextStyle(fontSize: 18)),
              ),
            
            SizedBox(
              height: 60.0,
              child: Text("The National Alliance on Mental Illness: 1(800) 950-6264",
             style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        )
      )
      )
    );
}
}