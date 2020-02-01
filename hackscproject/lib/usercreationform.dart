import 'package:flutter/material.dart';

class UserCreationForm extends StatelessWidget {
 final _formKey = GlobalKey<FormState>();

@override
Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Herrooo friend"),
      ),
      body: Container(
        child: Form(
    key: _formKey,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextFormField(
          decoration: const InputDecoration(
            hintText: 'Enter your email',
          ),
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          
        ),
              TextFormField(
          decoration: const InputDecoration(
            hintText: 'Enter yourha',
          ),
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter sasome text';
            }
            return null;
          },
          
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: RaisedButton(
            onPressed: () {
              // Validate will return true if the form is valid, or false if
              // the form is invalid.
              if (_formKey.currentState.validate()) {
                // Process data.
              }
            },
            child: Text('Submit'),
          ),
        ),
      ],
    ),
  )
  ),
  );
  }
}
