import 'package:flutter/material.dart';
import 'package:edux_app/widgets/base_scaffold.dart';

class SOPFeedbackHistoryPage extends StatelessWidget {
  const SOPFeedbackHistoryPage({Key? key}) : super(key: key);

  final List<Map<String, String>> feedbacks = const [
    {"date": "June 10", "summary": "Improve clarity in intro"},
    {"date": "June 15", "summary": "Add metrics in experience"},
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
      title: "SOP Feedback History",
      currentIndex: 2, // Resume tab index
      onTabChange: (index) => handleTabChange(context, index),
      child: ListView.builder(
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
