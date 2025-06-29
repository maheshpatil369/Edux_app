import 'package:flutter/material.dart';

class MockTestResultPage extends StatelessWidget {
  const MockTestResultPage({Key? key}) : super(key: key);

  final List<Map<String, String>> results = const [
    {"test": "GRE Verbal", "score": "156"},
    {"test": "GRE Quant", "score": "165"},
    {"test": "TOEFL Listening", "score": "27"},
    {"test": "TOEFL Reading", "score": "29"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mock Test Results")),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: results.length,
        itemBuilder: (context, index) {
          final test = results[index];
          return ListTile(
            title: Text(test['test']!),
            trailing: Text("Score: ${test['score']}"),
          );
        },
      ),
    );
  }
}
