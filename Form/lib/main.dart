import 'package:flutter/material.dart';
import 'signup_form.dart';
import 'login_form.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => AuthPage(),
      '/welcome': (context) => WelcomePage(),
    },
  ));
}

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Signup & Login'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Signup'),
              Tab(text: 'Login'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SignupForm(),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: Text('Welcome to the App!'),
      ),
    );
  }
}
