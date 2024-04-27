import 'package:flutter/material.dart';
import 'package:namer_app/providers/auth_provider.dart';
import 'package:namer_app/screens/home_page.dart';
import 'package:namer_app/screens/login_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthProvider(),
      child: MaterialApp(
        title: 'SGX App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: SGXApp(),
      ),
    );
  }
}

class SGXApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var loginState = context.watch<AuthProvider>();
    var isAuthenticated = loginState.isAuthenticated;

    Widget page;
    if (isAuthenticated) {
      page = MyHomePage();
    } else {
      page = LoginPage();
    }

    return Scaffold(
      body: page,
    );
  }
}
