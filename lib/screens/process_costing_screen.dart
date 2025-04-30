import 'package:flutter/material.dart';

class ProcessCostingScreen extends StatelessWidget {
  final TextEditingController laborCost = TextEditingController();
  final TextEditingController energyCost = TextEditingController();
  final TextEditingController margin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Process & Costing')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: laborCost, decoration: InputDecoration(labelText: 'Labor Cost')),
            TextField(controller: energyCost, decoration: InputDecoration(labelText: 'Energy Cost')),
            TextField(controller: margin, decoration: InputDecoration(labelText: 'Desired Margin (%)')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Calculation logic here
              },
              child: Text('Calculate'),
            )
          ],
        ),
      ),
    );
  }
}
