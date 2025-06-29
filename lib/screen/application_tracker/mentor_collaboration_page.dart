import 'package:flutter/material.dart';

class MentorCollaborationPage extends StatelessWidget {
  const MentorCollaborationPage({Key? key}) : super(key: key);

  final List<Map<String, String>> mentors = const [
    {"name": "Anjali Verma", "field": "Data Science"},
    {"name": "Rohit Singh", "field": "Business Analytics"},
    {"name": "Nisha Rao", "field": "Cybersecurity"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mentor Collaboration")),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: mentors.length,
        itemBuilder: (context, index) {
          final mentor = mentors[index];
          return ListTile(
            title: Text(mentor['name']!),
            subtitle: Text("Expert in ${mentor['field']}"),
            trailing: ElevatedButton(
              onPressed: () {},
              child: const Text("Connect"),
            ),
          );
        },
      ),
    );
  }
}
