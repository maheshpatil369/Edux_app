import 'package:flutter/material.dart';

class ATSPreviewPage extends StatelessWidget {
  const ATSPreviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ATS Resume Preview")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Name: Mahesh Patil"),
            Text("Education: B.Tech CSE"),
            Text("Experience: Internships, Projects"),
            SizedBox(height: 20),
            Text("This is how your resume will appear to ATS."),
          ],
        ),
      ),
    );
  }
}

