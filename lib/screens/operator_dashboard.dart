import 'package:flutter/material.dart';

class OperatorDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Operator Dashboard')),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.qr_code),
            title: Text('Scan Material'),
            onTap: () => Navigator.pushNamed(context, '/materials'),
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Log Consumption'),
            onTap: () => Navigator.pushNamed(context, '/log'),
          ),
        ],
      ),
    );
  }
}
