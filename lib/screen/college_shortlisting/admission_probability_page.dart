import 'package:flutter/material.dart';

class AdmissionProbabilityPage extends StatelessWidget {
  const AdmissionProbabilityPage({Key? key}) : super(key: key);

  final double probability = 0.72; // mock value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Admission Probability")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Your estimated chance of admission:", style: TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            Text(
              "${(probability * 100).toStringAsFixed(1)}%",
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
