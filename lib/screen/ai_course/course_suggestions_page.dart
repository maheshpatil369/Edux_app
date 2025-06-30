import 'package:flutter/material.dart';
import 'package:edux_app/widgets/base_scaffold.dart';

class CourseSuggestionsPage extends StatelessWidget {
  const CourseSuggestionsPage({Key? key}) : super(key: key);

  static const List<String> sampleCourses = [
    "Machine Learning Specialization",
    "Data Structures & Algorithms",
    "UI/UX Design Principles",
    "Cloud Fundamentals (AWS/GCP)",
    "Cybersecurity Essentials"
  ];

  void handleTabChange(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/dashboard');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/college_list');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/resume_builder');
        break;
      case 3:
        Navigator.pushReplacementNamed(context, '/profile_form');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: "AI Course Suggestions",
      currentIndex: 0,
      onTabChange: (index) => handleTabChange(context, index),
      child: ListView.builder(
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
