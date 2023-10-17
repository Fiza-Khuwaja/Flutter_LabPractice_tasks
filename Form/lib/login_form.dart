import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Add TextFormField widgets with validation for email and password

          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Login logic here
                Navigator.pushReplacementNamed(context, '/welcome');
              }
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
