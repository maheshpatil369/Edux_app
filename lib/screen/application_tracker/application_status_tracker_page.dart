import 'package:flutter/material.dart';

class ApplicationStatusTrackerPage extends StatelessWidget {
  const ApplicationStatusTrackerPage({Key? key}) : super(key: key);

  final List<Map<String, String>> apps = const [
    {"college": "IIT Bombay", "status": "Submitted"},
    {"college": "BITS Pilani", "status": "Under Review"},
    {"college": "IIM Bangalore", "status": "Accepted"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Application Status Tracker")),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: apps.length,
        itemBuilder: (context, index) {
          final app = apps[index];
          return ListTile(
            title: Text(app['college']!),
            subtitle: Text("Status: ${app['status']}"),
            leading: const Icon(Icons.school),
          );
        },
      ),
    );
  }
}
