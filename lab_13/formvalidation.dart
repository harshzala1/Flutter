import 'package:flutter/material.dart';

void main() {
  runApp(Formmm());
}

class Formmm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Form Validation Example")),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: MyForm(),
        ),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _email;
  String? _password;
  String? _confirmPassword;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Name'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
            onSaved: (value) {
              _name = value;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Email'),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              } else if (!RegExp(r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+').hasMatch(value)) {
                return 'Please enter a valid email address';
              }
              return null;
            },
            onSaved: (value) {
              _email = value;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            onSaved: (value) {
              _password = value;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Confirm Password'),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please confirm your password';
              } else if (value != _password) {
                return 'Passwords do not match';
              }
              return null;
            },
            onSaved: (value) {
              _confirmPassword = value;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  _formKey.currentState?.save();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Form Submitted')));
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
