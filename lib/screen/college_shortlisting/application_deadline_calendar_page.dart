import 'package:flutter/material.dart';

class ApplicationDeadlineCalendarPage extends StatelessWidget {
  const ApplicationDeadlineCalendarPage({Key? key}) : super(key: key);

  final List<Map<String, String>> deadlines = const [
    {"college": "IIT Bombay", "deadline": "31 July 2025"},
    {"college": "IIM Bangalore", "deadline": "15 August 2025"},
    {"college": "BITS Pilani", "deadline": "10 July 2025"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Application Deadlines")),
      body: ListView.builder(
        itemCount: deadlines.length,
        itemBuilder: (context, index) {
          final item = deadlines[index];
          return ListTile(
            leading: const Icon(Icons.calendar_today),
            title: Text(item['college']!),
            subtitle: Text("Deadline: ${item['deadline']}"),
          );
        },
      ),
    );
  }
}
