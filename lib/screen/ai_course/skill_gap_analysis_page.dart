import 'package:flutter/material.dart';
import 'package:edux_app/widgets/base_scaffold.dart';

class SkillGapAnalysisPage extends StatelessWidget {
  const SkillGapAnalysisPage({Key? key}) : super(key: key);

  static const List<Map<String, String>> skills = [
    {"skill": "Python", "status": "Good"},
    {"skill": "Machine Learning", "status": "Needs Improvement"},
    {"skill": "Public Speaking", "status": "Average"},
    {"skill": "Time Management", "status": "Strong"},
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
      title: "Skill Gap Analysis",
      currentIndex: 3, // ✅ Profile tab
      onTabChange: (index) => handleTabChange(context, index),
      child: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: skills.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) {
          final skill = skills[index];
          return ListTile(
            title: Text(skill['skill']!),
            subtitle: Text("Status: ${skill['status']}"),
            leading: const Icon(Icons.bar_chart),
          );
        },
      ),
    );
  }
}
