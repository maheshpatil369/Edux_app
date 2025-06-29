import 'package:flutter/material.dart';

class ProfileFormPage extends StatelessWidget {
  const ProfileFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile Form")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
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
      ),
    );
  }
}
