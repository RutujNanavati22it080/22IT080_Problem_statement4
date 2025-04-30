import 'package:flutter/material.dart';

class LowStockAlertsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Low Stock Alerts')),
      body: ListView(
        children: [
          ListTile(title: Text('Steel Rod'), subtitle: Text('Only 10 units left!'), trailing: Icon(Icons.warning)),
          ListTile(title: Text('Plastic Sheets'), subtitle: Text('Only 5 units left!'), trailing: Icon(Icons.warning)),
        ],
      ),
    );
  }
}
