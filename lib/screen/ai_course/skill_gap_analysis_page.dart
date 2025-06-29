import 'package:flutter/material.dart';

class SkillGapAnalysisPage extends StatelessWidget {
  const SkillGapAnalysisPage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> skills = const [
    {"skill": "Python", "status": "Good"},
    {"skill": "Machine Learning", "status": "Needs Improvement"},
    {"skill": "Public Speaking", "status": "Average"},
    {"skill": "Time Management", "status": "Strong"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Skill Gap Analysis")),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: skills.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) {
          final skill = skills[index];
          return ListTile(
            title: Text(skill['skill']),
            subtitle: Text("Status: ${skill['status']}"),
            leading: const Icon(Icons.bar_chart),
          );
        },
      ),
    );
  }
}
