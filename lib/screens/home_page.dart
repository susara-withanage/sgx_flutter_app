import 'package:flutter/material.dart';
import 'package:namer_app/models/albums.dart';
import 'package:namer_app/models/logout.dart';
import 'package:namer_app/models/posts.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('SGX App'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.photo), // Albums
              ),
              Tab(
                icon: Icon(Icons.auto_awesome), // Posts
              ),
              Tab(
                icon: Icon(Icons.account_circle_outlined), // Logout
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Albums(),
            Posts(),
            Logout(),
          ],
        ),
      ),
    );
  }
}
