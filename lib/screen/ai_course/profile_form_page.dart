import 'package:flutter/material.dart';
import 'package:edux_app/widgets/base_scaffold.dart';

class ProfileFormPage extends StatelessWidget {
  const ProfileFormPage({Key? key}) : super(key: key);

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
      title: "Profile Form",
      currentIndex: 3, // ✅ Active tab is Profile
      onTabChange: (index) => handleTabChange(context, index),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Tell us about yourself", style: TextStyle(fontSize: 24)),
          const SizedBox(height: 20),
          const TextField(
            decoration: InputDecoration(labelText: "Your Career Goal"),
          ),
          const SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(labelText: "Your Strengths"),
          ),
          const SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(labelText: "Your Interests"),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/course_suggestions');
            },
            child: const Text("Generate Suggestions"),
          )
        ],
      ),
    );
  }
}
