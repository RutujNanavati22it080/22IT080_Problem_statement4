import 'package:flutter/material.dart';

class MaterialListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Materials')),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => ListTile(
          title: Text('Material ${index + 1}'),
          subtitle: Text('Unit Cost: ₹100 | Stock: 50'),
          trailing: Icon(Icons.qr_code),
        ),
      ),
    );
  }
}
