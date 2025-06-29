import 'package:flutter/material.dart';

class ResumeBuilderPage extends StatelessWidget {
  const ResumeBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Resume Builder")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("Fill in your details", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            const TextField(decoration: InputDecoration(labelText: "Full Name")),
            const SizedBox(height: 10),
            const TextField(decoration: InputDecoration(labelText: "Education")),
            const SizedBox(height: 10),
            const TextField(decoration: InputDecoration(labelText: "Experience")),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ats_preview');
              },
              child: const Text("Preview Resume"),
            ),
          ],
        ),
      ),
    );
  }
}
