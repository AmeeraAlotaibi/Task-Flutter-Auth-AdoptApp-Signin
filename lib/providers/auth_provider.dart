import 'package:adopt_app/models/user.dart';
import 'package:adopt_app/services/auth.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  late String token;
  late User user;

  void signup({required User user}) async {
    token = await AuthServices().signup(user: user);
    notifyListeners();
  }

  void signin({required User user}) async {
    token = await AuthServices().signin(user: user);
    notifyListeners();
  }
}
