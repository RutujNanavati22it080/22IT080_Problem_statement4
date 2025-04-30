import 'package:flutter/material.dart';

class ReportsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reports & Analytics')),
      body: Center(child: Text('Export PDF/CSV, View Cost Summary')),
    );
  }
}
