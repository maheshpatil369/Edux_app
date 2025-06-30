import 'package:flutter/material.dart';
import 'package:edux_app/widgets/base_scaffold.dart';

class SOPEditorPage extends StatelessWidget {
  const SOPEditorPage({Key? key}) : super(key: key);

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
    TextEditingController controller = TextEditingController();

    return BaseScaffold(
      title: "Edit SOP",
      currentIndex: 2, // Resume tab index
      onTabChange: (index) => handleTabChange(context, index),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Write or Paste your Statement of Purpose",
              style: TextStyle(fontSize: 18),
            ),
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
