import 'package:flutter/material.dart';

class CourseSuggestionsPage extends StatelessWidget {
  const CourseSuggestionsPage({Key? key}) : super(key: key);

  final List<String> sampleCourses = const [
    "Machine Learning Specialization",
    "Data Structures & Algorithms",
    "UI/UX Design Principles",
    "Cloud Fundamentals (AWS/GCP)",
    "Cybersecurity Essentials"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AI Course Suggestions")),
      body: ListView.builder(
        itemCount: sampleCourses.length,
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 16),
            child: ListTile(
              title: Text(sampleCourses[index]),
              subtitle: const Text("Recommended by AI"),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Optionally open course detail
              },
            ),
          );
        },
      ),
    );
  }
}
