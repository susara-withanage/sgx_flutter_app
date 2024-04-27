import 'package:flutter/material.dart';
import 'package:namer_app/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class Logout extends StatefulWidget {
  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AuthProvider>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                appState.logout();
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
