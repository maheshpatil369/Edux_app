import 'package:flutter/material.dart';

class SOPEditorPage extends StatelessWidget {
  const SOPEditorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Edit SOP")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("Write or Paste your Statement of Purpose", style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            TextField(
              controller: controller,
              maxLines: 10,
              decoration: const InputDecoration(
                hintText: "Type your SOP here...",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sop_feedback');
              },
              child: const Text("Get Feedback"),
            ),
          ],
        ),
      ),
    );
  }
}
