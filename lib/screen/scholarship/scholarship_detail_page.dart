import 'package:flutter/material.dart';

class ScholarshipDetailPage extends StatelessWidget {
  const ScholarshipDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scholarship Details")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Fulbright Scholarship", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("Eligibility: Indian students applying to US universities."),
            Text("Benefits: Full tuition, travel, and living expenses."),
            Text("Deadline: August 30, 2025"),
          ],
        ),
      ),
    );
  }
}
