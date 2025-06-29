import 'package:flutter/material.dart';

class CollegeDetailPage extends StatelessWidget {
  const CollegeDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("College Details")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("IIT Bombay", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("Location: Mumbai"),
            Text("Ranking: #3 in India"),
            Text("Fees: ₹2.3L/year"),
            SizedBox(height: 20),
            Text("Available Programs:"),
            Text("- B.Tech in CSE"),
            Text("- M.Tech in AI"),
          ],
        ),
      ),
    );
  }
}
