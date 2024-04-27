import 'package:flutter/material.dart';
import 'package:namer_app/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var authProvider = context.watch<AuthProvider>();
    String username = '';
    String password = '';

    Widget errors = Text("");

    if (authProvider.onError) {
      errors = Text(
        authProvider.error,
        style: TextStyle(color: Color.fromRGBO(255, 0, 0, 1)),
      );
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                username = value; // Update the username when the text changes
              },
              decoration: InputDecoration(
                hintText: 'Username',
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              onChanged: (value) {
                password = value; // Update the password when the text changes
              },
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            errors,
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Call the login method of AuthProvider with the username and password
                authProvider.login(username, password);
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
