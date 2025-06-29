import 'package:flutter/material.dart';

class ScholarshipMatchingPage extends StatelessWidget {
  const ScholarshipMatchingPage({Key? key}) : super(key: key);

  final List<String> scholarships = const [
    "AICTE Scholarship",
    "DAAD Germany Program",
    "Fulbright India",
    "Chevening UK",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scholarship Matches")),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: scholarships.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.school),
            title: Text(scholarships[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, '/scholarship_detail');
            },
          );
        },
      ),
    );
  }
}
