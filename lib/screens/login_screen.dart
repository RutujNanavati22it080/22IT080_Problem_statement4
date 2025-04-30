import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import '../widgets/custom_button.dart';
import 'admin_dashboard.dart';
import 'operator_dashboard.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? _role = 'Operator';
  final AuthService _authService = AuthService();

  void _login() async {
    bool success = await _authService.loginUser(role: _role!);
    if (success) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => _role == 'Admin' ? AdminDashboard() : OperatorDashboard(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid login')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SmartFab Login')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              value: _role,
              items: ['Admin', 'Operator'].map((e) {
                return DropdownMenuItem(value: e, child: Text(e));
              }).toList(),
              onChanged: (val) => setState(() => _role = val),
              decoration: InputDecoration(labelText: 'Select Role'),
            ),
            SizedBox(height: 20),
            CustomButton(text: 'Login', onPressed: _login),
          ],
        ),
      ),
    );
  }
}
