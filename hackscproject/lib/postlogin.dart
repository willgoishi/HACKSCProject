import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Post Login Screen ",
            style: TextStyle(fontSize: 18.0),
          ),
        ),
        backgroundColor: Colors.blue[300],
        body: SingleChildScrollView(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage('assets/resilience.png'),
                ),
                Text(
                  'Bob Kazawaki',
                  style: TextStyle(
                    fontSize: 26,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 200,
                  child: Divider(
                    color: Colors.blueAccent[100],
                  ),
                ),
              
                Card(
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal[900],
                      ),
                      title: Text(
                        '+314 159 2654',
                        style:
                            TextStyle(fontSize: 20.0),
                      ),
                    )),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.cake,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      '08-05-1995',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
              Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Text("Time Zone"),
                    title: Text(
                      'Pacific Standard Time',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                )
              ],
            ),
           ),
          ),
    );
  }
}