import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  // Add more controllers for full name, DOB, age, gender, etc.

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Add TextFormField widgets with validation for each field

          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Signup logic here
                Navigator.pushReplacementNamed(context, '/welcome');
              }
            },
            child: Text('Sign Up'),
          ),
        ],
      ),
    );
  }
}
