import 'package:flutter/material.dart';

class FinancialEstimatorPage extends StatelessWidget {
  const FinancialEstimatorPage({Key? key}) : super(key: key);

  final double tuition = 1200000;
  final double living = 600000;
  final double travel = 150000;

  @override
  Widget build(BuildContext context) {
    final double total = tuition + living + travel;

    return Scaffold(
      appBar: AppBar(title: const Text("Financial Estimator")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Tuition: ₹${tuition.toStringAsFixed(0)}"),
            Text("Living Expenses: ₹${living.toStringAsFixed(0)}"),
            Text("Travel: ₹${travel.toStringAsFixed(0)}"),
            const SizedBox(height: 20),
            Text("Estimated Total: ₹${total.toStringAsFixed(0)}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
