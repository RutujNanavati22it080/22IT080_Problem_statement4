import 'package:flutter/material.dart';

class AuthService {
  // Simulates a login (can be replaced by Firebase logic)
  Future<bool> loginUser({required String role}) async {
    await Future.delayed(Duration(seconds: 1)); // Simulated delay
    if (role == 'Admin' || role == 'Operator') {
      return true;
    } else {
      return false;
    }
  }
}
