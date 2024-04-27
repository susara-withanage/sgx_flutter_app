import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool isAuthenticated = false;
  bool onError = false;
  String error = "Username or password is invalid";

  void login(String username, String password) {
    if (username == "admin" && password == "admin") {
      isAuthenticated = true;
      onError = false;
      notifyListeners();
    } else {
      onError = true;
      notifyListeners();
    }
  }

  void logout() {
    isAuthenticated = false;
    notifyListeners();
  }
}
