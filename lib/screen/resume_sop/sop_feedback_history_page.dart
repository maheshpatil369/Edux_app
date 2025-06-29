import 'package:flutter/material.dart';

class SOPFeedbackHistoryPage extends StatelessWidget {
  const SOPFeedbackHistoryPage({Key? key}) : super(key: key);

  final List<Map<String, String>> feedbacks = const [
    {"date": "June 10", "summary": "Improve clarity in intro"},
    {"date": "June 15", "summary": "Add metrics in experience"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SOP Feedback History")),
      body: ListView.builder(
        itemCount: feedbacks.length,
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) {
          final item = feedbacks[index];
          return ListTile(
            leading: const Icon(Icons.feedback),
            title: Text("Feedback on ${item['date']}"),
            subtitle: Text(item['summary']!),
          );
        },
      ),
    );
  }
}
