import 'package:flutter/material.dart';

class CareerPathSimulationPage extends StatelessWidget {
  const CareerPathSimulationPage({Key? key}) : super(key: key);

  final List<Map<String, String>> paths = const [
    {"title": "Software Developer", "next": "Team Lead"},
    {"title": "Data Scientist", "next": "AI Researcher"},
    {"title": "UI/UX Designer", "next": "Product Manager"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Career Path Simulation")),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: paths.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) {
          final path = paths[index];
          return ListTile(
            leading: const Icon(Icons.route),
            title: Text(path['title']!),
            subtitle: Text("Next: ${path['next']}"),
          );
        },
      ),
    );
  }
}
