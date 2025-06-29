import 'package:flutter/material.dart';

class LoanCalculatorPage extends StatelessWidget {
  const LoanCalculatorPage({Key? key}) : super(key: key);

  final double loanAmount = 1000000;
  final double interestRate = 8.5;
  final int years = 5;

  @override
  Widget build(BuildContext context) {
    double total = loanAmount * (1 + (interestRate / 100) * years);

    return Scaffold(
      appBar: AppBar(title: const Text("Loan Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Loan Amount: ₹$loanAmount"),
            Text("Interest Rate: $interestRate%"),
            Text("Duration: $years years"),
            const SizedBox(height: 20),
            Text("Estimated Repayment: ₹${total.toStringAsFixed(0)}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
