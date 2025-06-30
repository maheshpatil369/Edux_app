import 'package:flutter/material.dart';
import '../../widgets/base_scaffold.dart';

class CollegeFilterPage extends StatelessWidget {
  const CollegeFilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Filter Colleges',
      currentIndex: 1,
      onTabChange: (index) => _handleTabChange(context, index),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Filter by:", style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          TextField(decoration: InputDecoration(labelText: "Rank")),
          TextField(decoration: InputDecoration(labelText: "Fees")),
          TextField(decoration: InputDecoration(labelText: "Location")),
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
