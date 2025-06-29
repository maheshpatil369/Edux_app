import 'package:flutter/material.dart';

class DocumentChecklistPage extends StatelessWidget {
  const DocumentChecklistPage({Key? key}) : super(key: key);

  final List<String> docs = const [
    "Passport",
    "SOP (Statement of Purpose)",
    "LOR (Letter of Recommendation)",
    "Resume",
    "Academic Transcripts"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Document Checklist")),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: docs.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text(docs[index]),
            value: false, // static for UI
            onChanged: (_) {},
          );
        },
      ),
    );
  }
}
