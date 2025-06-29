import 'package:flutter/material.dart';

class InterviewPreparationTipsPage extends StatelessWidget {
  const InterviewPreparationTipsPage({Key? key}) : super(key: key);

  final List<String> tips = const [
    "Research the college and program.",
    "Practice common interview questions.",
    "Prepare your SOP and resume highlights.",
    "Be confident and clear in communication.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Interview Preparation Tips")),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: tips.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.check_circle_outline),
            title: Text(tips[index]),
          );
        },
      ),
    );
  }
}

