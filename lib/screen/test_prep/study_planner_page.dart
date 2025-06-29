import 'package:flutter/material.dart';

class StudyPlannerPage extends StatelessWidget {
  const StudyPlannerPage({Key? key}) : super(key: key);

  final List<String> tasks = const [
    "Practice 10 GRE Quant questions",
    "Read 1 RC Passage - TOEFL",
    "Revise Vocabulary Set 3",
    "Take 1 Listening Mock Test"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Study Planner")),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text(tasks[index]),
            value: false, // Static UI only
            onChanged: (_) {},
          );
        },
      ),
    );
  }
}
