import 'package:flutter/material.dart';
import 'package:edux_app/widgets/base_scaffold.dart';

class ATSPreviewPage extends StatelessWidget {
  const ATSPreviewPage({Key? key}) : super(key: key);

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
      title: "ATS Resume Preview",
      currentIndex: 2, // Resume tab index
      onTabChange: (index) => handleTabChange(context, index),
      child: Padding(
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
