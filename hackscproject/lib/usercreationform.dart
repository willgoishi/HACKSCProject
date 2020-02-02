import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(UserCreationForm());

class UserModel
{
    final String firstName;
    final String lastName;
    final String mentalHealthIssue;
    final String bioInformation; 
    //final DateTime birthDate;

    UserModel(this.firstName, this.lastName, this.mentalHealthIssue, this.bioInformation);
    //, this.birthDate
}

/// This Widget is the main application widget.
class UserCreationForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  static const String _title = 'User Profile';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final _formKey = GlobalKey<FormState>();
  final firebaseReference = Firestore.instance;

  final myFirstNameController = TextEditingController();
  final myLastNameController = TextEditingController();
  final myMentalHealthController = TextEditingController();
  final myBioInfoController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myFirstNameController.dispose();
    myLastNameController.dispose();
    myMentalHealthController.dispose();
    myBioInfoController.dispose();
    super.dispose();
  }

  void submission()
  {
      var user = new UserModel(
        myFirstNameController.text,
        myLastNameController.text,
        myMentalHealthController.text,
        myBioInfoController.text
      );

      firebaseReference.collection("users").add(
        {
          "First Name" : user.firstName,
          "Last Name" : user.lastName,
          "Mental Health" : user.mentalHealthIssue,
          "Bio Info" : user.bioInformation,
        }
      )
      .catchError(() => {
        //Do someting when error occurs
      });

      
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding : EdgeInsets.all(10),
              child: TextFormField(
                controller: myFirstNameController,
                decoration: const InputDecoration(
                  hintText: 'Enter name or Alias ',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'This section is required';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: myLastNameController,
                decoration: const InputDecoration(
                  hintText: 'When is your birthday',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'What time zone do you live in',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: myMentalHealthController,
                decoration: InputDecoration(
                  labelText: 'What Mental health problems do you suffer from'
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: myBioInfoController,
                decoration: InputDecoration(
                  labelText: 'Update your Bio'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 15),
              child: RaisedButton(
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid
                  if (_formKey.currentState.validate()) {
                    submission();
                  }
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      )
    );
  }
}
