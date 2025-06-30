import 'package:flutter/material.dart';
import '../../widgets/base_scaffold.dart';

class ApplicationDeadlineCalendarPage extends StatelessWidget {
  const ApplicationDeadlineCalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Application Deadlines',
      currentIndex: 1,
      onTabChange: (index) => _handleTabChange(context, index),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Upcoming Deadlines:", style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          Text("Harvard: Jan 1, 2026"),
          Text("MIT: Jan 10, 2026"),
          Text("Stanford: Jan 15, 2026"),
        ],
      ),
    );
  }

  void _handleTabChange(BuildContext context, int index) {
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
        Navigator.pushReplacementNamed(context, '/user_profile');
        break;
    }
  }
}
