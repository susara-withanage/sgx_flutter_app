import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool isAuthenticated = false;

  void login(String username, String password) {
    if (username == "admin" && password == "admin") {
      isAuthenticated = true;
      notifyListeners();
    }
  }

  void logout() {
    isAuthenticated = false;
    notifyListeners();
  }
}
