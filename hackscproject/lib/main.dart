import 'package:flutter/material.dart';
import 'package:hackscproject/mentalhealthresources.dart';
import 'usercreationform.dart';
import 'landingpage.dart';
import 'mentalhealthresources.dart';
import 'postlogin.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new LandingPage(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => new LoginPage(),
        '/mh': (BuildContext context) => new MentalHealthResources(),
      },
    );
  }
}



class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final formkey = new GlobalKey<FormState>();      

  String _email;
  String _password;
  
  void validateandsave(){
    final form = formkey.currentState;
    if(form.validate()){
      print ("Form Valid");
    }
    else{
      print ("Form Invalid");
    }
  }

      @override
      Widget build(BuildContext context) {


        final emailField = new TextFormField(
          obscureText: false,
          autofocus: true,
          validator: (val) => val.isEmpty ? 'Empty Field' : null,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Email",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)))
        );

        final passwordField = TextFormField(
          obscureText: true,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Password",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
          validator: (value) => value.isEmpty ? 'Empty Field' : null
        );

        final loginButton = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0xff01A0C7),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              validateandsave();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => (HomePage())),
              );
              
            }, 
            child: Text("Login",
                textAlign: TextAlign.center,
               ),
          ),
        );

        final createNewAccount = FlatButton(
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => (UserCreationForm())),
              );
            },
            child: Text("Create A New Account",
                textAlign: TextAlign.center,
          ),
        );
        

        return Scaffold(
          body: SingleChildScrollView(
            child:Center(
            child: Container(
              color: Colors.white,
              child: Form(
                key: formkey,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 155.0,
                      child: Image.asset(
                        "assets/40f.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    
                    SizedBox(height: 45.0),
                    emailField,
                    
                    SizedBox(height: 25.0),
                    passwordField,
                    
                    SizedBox(height: 35.0),
                    loginButton,

                    SizedBox(
                      height: 15.0,
                    ),
                    createNewAccount,
                
                    
                    
                      
                    
                  ],
                ),
              ),
            ),
          ) 
          )
          )
        );
      }
    }


